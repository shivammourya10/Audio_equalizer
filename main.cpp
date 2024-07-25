#include <GL/glew.h> // Include GLEW first
#include <SDL2/SDL.h>
#include <SDL2/SDL_mixer.h>
#include <fftw3.h>
#include <imgui.h>
#include <imgui_impl_sdl2.h>
#include <imgui_impl_opengl3.h>
#include <iostream>
#include <cstdlib>
#include <cstring>
// #include "imgui_knobs.h" // Include ImGuiKnobs

// Define the number of equalizer bands
const int NUM_BANDS = 6;

// Frequencies for the bands (e.g., bass, mid, treble)
const char* band_names[NUM_BANDS] = {"Bass", "Low-Mid", "Mid", "Upper-Mid", "Presence", "Brilliance"};
const int N = 1024; // FFT size
fftw_complex* in;
fftw_complex* out;
fftw_plan p;
fftw_plan p_inv;
SDL_AudioDeviceID audioDevice;
float gains[NUM_BANDS]; // Example: Default gains
float playbackSpeed = 1.0f;

void applyEqualizer(float* gains, fftw_complex* out) {
    int bandWidth = N / NUM_BANDS;
    for (int i = 0; i < N; ++i) {
        int band = i / bandWidth;
        out[i][0] *= gains[band]; // Real part
        out[i][1] *= gains[band]; // Imaginary part
    }
}

void audioCallback(void* userdata, Uint8* stream, int len) {
    int numSamples = len / sizeof(float);
    float* buffer = (float*)stream;

    for (int i = 0; i < numSamples && i < N; ++i) {
        in[i][0] = buffer[i]; // Real part
        in[i][1] = 0.0;       // Imaginary part
    }

    fftw_execute(p);

    applyEqualizer(gains, out);

    fftw_execute(p_inv);

    for (int i = 0; i < numSamples && i < N; ++i) {
        buffer[i] = in[i][0]; // Real part
    }
}

void setImGuiStyle() {
    ImGuiStyle& style = ImGui::GetStyle();
    style.FrameRounding = 5.0f;
    style.Colors[ImGuiCol_FrameBg] = ImColor(40, 40, 40);
    style.Colors[ImGuiCol_FrameBgHovered] = ImColor(50, 50, 50);
    style.Colors[ImGuiCol_FrameBgActive] = ImColor(60, 60, 60);
    style.Colors[ImGuiCol_TitleBg] = ImColor(10, 10, 10);
    style.Colors[ImGuiCol_TitleBgActive] = ImColor(20, 20, 20);
    style.Colors[ImGuiCol_TitleBgCollapsed] = ImColor(5, 5, 5);
    style.Colors[ImGuiCol_SliderGrab] = ImColor(90, 90, 90);
    style.Colors[ImGuiCol_SliderGrabActive] = ImColor(120, 120, 120);
    style.Colors[ImGuiCol_Button] = ImColor(40, 40, 40);
    style.Colors[ImGuiCol_ButtonHovered] = ImColor(50, 50, 50);
    style.Colors[ImGuiCol_ButtonActive] = ImColor(60, 60, 60);
}

void parseArguments(int argc, char* argv[]) {
    for (int i = 1; i < argc; ++i) {
        if (strcmp(argv[i], "--gains") == 0 && i + NUM_BANDS < argc) {
            for (int j = 0; j < NUM_BANDS; ++j) {
                gains[j] = std::stof(argv[++i]);
            }
        } else if (strcmp(argv[i], "--speed") == 0 && i + 1 < argc) {
            playbackSpeed = std::stof(argv[++i]);
        }
    }
}

int main(int argc, char* argv[]) {
    // Initialize default gains
    for (int i = 0; i < NUM_BANDS; ++i) {
        gains[i] = 1.0f;
    }

    // Parse command-line arguments
    parseArguments(argc, argv);

    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO) < 0) {
        std::cerr << "SDL could not initialize! SDL_Error: " << SDL_GetError() << std::endl;
        return 1;
    }

    const char* glsl_version = "#version 330";
    // Set SDL OpenGL attributes
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_FLAGS, 0);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 3);

    if (Mix_OpenAudio(44100, MIX_DEFAULT_FORMAT, 2, 2048) < 0) {
        std::cerr << "SDL_mixer could not initialize! SDL_mixer Error: " << Mix_GetError() << std::endl;
        SDL_Quit();
        return 1;
    }

    SDL_Window* window = SDL_CreateWindow("Audio Equalizer", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 640, 480, SDL_WINDOW_OPENGL | SDL_WINDOW_SHOWN);
    if (window == nullptr) {
        std::cerr << "Window could not be created! SDL_Error: " << SDL_GetError() << std::endl;
        SDL_Quit();
        return 1;
    }

    SDL_GLContext gl_context = SDL_GL_CreateContext(window);
    if (gl_context == nullptr) {
        std::cerr << "OpenGL context could not be created! SDL_Error: " << SDL_GetError() << std::endl;
        SDL_DestroyWindow(window);
        SDL_Quit();
        return 1;
    }

    GLenum err = glewInit();
    if (err != GLEW_OK) {
        std::cerr << "Failed to initialize GLEW: " << glewGetErrorString(err) << std::endl;
        SDL_GL_DeleteContext(gl_context);
        SDL_DestroyWindow(window);
        SDL_Quit();
        return 1;
    }

    // Initialize ImGui
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    ImGui::StyleColorsDark();
    setImGuiStyle();
    ImGui_ImplSDL2_InitForOpenGL(window, gl_context);
    ImGui_ImplOpenGL3_Init(glsl_version);

    in = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * N);
    out = (fftw_complex*) fftw_malloc(sizeof(fftw_complex) * N);
    p = fftw_plan_dft_1d(N, in, out, FFTW_FORWARD, FFTW_ESTIMATE);
    p_inv = fftw_plan_dft_1d(N, out, in, FFTW_BACKWARD, FFTW_ESTIMATE);

    SDL_AudioSpec desiredSpec;
    SDL_zero(desiredSpec);
    desiredSpec.freq = 44100;
    desiredSpec.format = AUDIO_F32;
    desiredSpec.channels = 1;
    desiredSpec.samples = N;
    desiredSpec.callback = audioCallback;

    audioDevice = SDL_OpenAudioDevice(NULL, SDL_TRUE, &desiredSpec, NULL, 0);
    if (audioDevice == 0) {
        std::cerr << "Failed to open audio device! SDL_Error: " << SDL_GetError() << std::endl;
        return 1;
    }

    SDL_PauseAudioDevice(audioDevice, 0);

    Mix_Chunk* music = Mix_LoadWAV("/Users/shivammourya/Downloads/song.mp3");
    if (music == nullptr) {
        std::cerr << "Failed to load sound effect! SDL_mixer Error: " << Mix_GetError() << std::endl;
        SDL_Quit();
        return 1;
    }

    Mix_PlayChannel(-1, music, 0);

    bool quit = false;
    SDL_Event e;
    while (!quit) {
        while (SDL_PollEvent(&e) != 0) {
            ImGui_ImplSDL2_ProcessEvent(&e);
            if (e.type == SDL_QUIT) {
                quit = true;
            }
        }

        // Start the ImGui frame
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplSDL2_NewFrame();
        ImGui::NewFrame();

        // Create UI
        ImGui::Begin("Equalizer");
        for (int i = 0; i < NUM_BANDS; i++) {
            ImGui::VSliderFloat(band_names[i], ImVec2(18, 160), &gains[i], 0.0f, 10.0f, "");
        }
        ImGui::End();

        ImGui::Begin("Playback Control");
        // ImGuiKnob::Knob("Playback Speed", &playbackSpeed, -1.0f, 2.0f, 0.01f, "");
        ImGui::End();

        ImGui::Render();
        glViewport(0, 0, 640, 480);
        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        SDL_GL_SwapWindow(window);
    }

    Mix_FreeChunk(music);
    SDL_CloseAudioDevice(audioDevice);
    fftw_destroy_plan(p);
    fftw_destroy_plan(p_inv);
    fftw_free(in);
    fftw_free(out);
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplSDL2_Shutdown();
    ImGui::DestroyContext();
    SDL_GL_DeleteContext(gl_context);
    SDL_DestroyWindow(window);
    SDL_Quit();

    return 0;
}
