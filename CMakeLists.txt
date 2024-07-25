cmake_minimum_required(VERSION 3.10)
project(AudioEqualizer)

set(CMAKE_CXX_STANDARD 14)

# Set up directories for FFTW, SDL2, and GLEW
set(FFTW3_INCLUDE_DIR "/opt/homebrew/include")
set(FFTW3_LIBRARY "/opt/homebrew/lib/libfftw3.dylib")
set(SDL2_INCLUDE_DIR "/opt/homebrew/include/SDL2")
set(SDL2_LIBRARY "/opt/homebrew/lib/libSDL2.dylib")
set(SDL2_MIXER_LIBRARY "/opt/homebrew/lib/libSDL2_mixer.dylib")
set(GLEW_INCLUDE_DIR "/opt/homebrew/include")
set(GLEW_LIBRARY "/opt/homebrew/lib/libGLEW.dylib")

include_directories(${FFTW3_INCLUDE_DIR} ${SDL2_INCLUDE_DIR} ${GLEW_INCLUDE_DIR})

# Find packages
find_package(OpenGL REQUIRED)

# ImGui directories
set(IMGUI_DIR "${CMAKE_SOURCE_DIR}/imgui")
include_directories(${IMGUI_DIR})
include_directories(${IMGUI_DIR}/backends)

# Add source files
add_executable(AudioEqualizer
    main.cpp
    ${IMGUI_DIR}/imgui.cpp
    ${IMGUI_DIR}/imgui_draw.cpp
    ${IMGUI_DIR}/imgui_widgets.cpp
    ${IMGUI_DIR}/imgui_tables.cpp
    ${IMGUI_DIR}/imgui_demo.cpp
    ${IMGUI_DIR}/backends/imgui_impl_sdl2.cpp
    ${IMGUI_DIR}/backends/imgui_impl_opengl3.cpp
    ${IMGUI_DIR}/imgui/imgui-knobs.cpp
     # Add this line
)

# Link libraries
target_link_libraries(AudioEqualizer PRIVATE
    ${FFTW3_LIBRARY}
    ${SDL2_LIBRARY}
    ${SDL2_MIXER_LIBRARY}
    ${GLEW_LIBRARY}
    ${OPENGL_LIBRARIES}
)
