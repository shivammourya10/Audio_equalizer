# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shivammourya/AudioEqualizer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shivammourya/AudioEqualizer/build

# Include any dependencies generated for this target.
include CMakeFiles/AudioEqualizer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AudioEqualizer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AudioEqualizer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AudioEqualizer.dir/flags.make

CMakeFiles/AudioEqualizer.dir/main.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/main.cpp.o: /Users/shivammourya/AudioEqualizer/main.cpp
CMakeFiles/AudioEqualizer.dir/main.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AudioEqualizer.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/main.cpp.o -MF CMakeFiles/AudioEqualizer.dir/main.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/main.cpp.o -c /Users/shivammourya/AudioEqualizer/main.cpp

CMakeFiles/AudioEqualizer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/main.cpp > CMakeFiles/AudioEqualizer.dir/main.cpp.i

CMakeFiles/AudioEqualizer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/main.cpp -o CMakeFiles/AudioEqualizer.dir/main.cpp.s

CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o: /Users/shivammourya/AudioEqualizer/imgui/imgui.cpp
CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o -MF CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o -c /Users/shivammourya/AudioEqualizer/imgui/imgui.cpp

CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/imgui/imgui.cpp > CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.i

CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/imgui/imgui.cpp -o CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.s

CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o: /Users/shivammourya/AudioEqualizer/imgui/imgui_draw.cpp
CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o -MF CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o -c /Users/shivammourya/AudioEqualizer/imgui/imgui_draw.cpp

CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/imgui/imgui_draw.cpp > CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.i

CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/imgui/imgui_draw.cpp -o CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.s

CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o: /Users/shivammourya/AudioEqualizer/imgui/imgui_widgets.cpp
CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o -MF CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o -c /Users/shivammourya/AudioEqualizer/imgui/imgui_widgets.cpp

CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/imgui/imgui_widgets.cpp > CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.i

CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/imgui/imgui_widgets.cpp -o CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.s

CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o: /Users/shivammourya/AudioEqualizer/imgui/imgui_tables.cpp
CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o -MF CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o -c /Users/shivammourya/AudioEqualizer/imgui/imgui_tables.cpp

CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/imgui/imgui_tables.cpp > CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.i

CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/imgui/imgui_tables.cpp -o CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.s

CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o: /Users/shivammourya/AudioEqualizer/imgui/imgui_demo.cpp
CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o -MF CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o -c /Users/shivammourya/AudioEqualizer/imgui/imgui_demo.cpp

CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/imgui/imgui_demo.cpp > CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.i

CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/imgui/imgui_demo.cpp -o CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.s

CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o: /Users/shivammourya/AudioEqualizer/imgui/backends/imgui_impl_sdl2.cpp
CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o -MF CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o -c /Users/shivammourya/AudioEqualizer/imgui/backends/imgui_impl_sdl2.cpp

CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/imgui/backends/imgui_impl_sdl2.cpp > CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.i

CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/imgui/backends/imgui_impl_sdl2.cpp -o CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.s

CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o: /Users/shivammourya/AudioEqualizer/imgui/backends/imgui_impl_opengl3.cpp
CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o -MF CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o -c /Users/shivammourya/AudioEqualizer/imgui/backends/imgui_impl_opengl3.cpp

CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/imgui/backends/imgui_impl_opengl3.cpp > CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.i

CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/imgui/backends/imgui_impl_opengl3.cpp -o CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.s

CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o: CMakeFiles/AudioEqualizer.dir/flags.make
CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o: /Users/shivammourya/AudioEqualizer/imgui/imgui-knobs.cpp
CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o: CMakeFiles/AudioEqualizer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o -MF CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o.d -o CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o -c /Users/shivammourya/AudioEqualizer/imgui/imgui-knobs.cpp

CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/shivammourya/AudioEqualizer/imgui/imgui-knobs.cpp > CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.i

CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/shivammourya/AudioEqualizer/imgui/imgui-knobs.cpp -o CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.s

# Object files for target AudioEqualizer
AudioEqualizer_OBJECTS = \
"CMakeFiles/AudioEqualizer.dir/main.cpp.o" \
"CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o" \
"CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o" \
"CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o" \
"CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o" \
"CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o" \
"CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o" \
"CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o"

# External object files for target AudioEqualizer
AudioEqualizer_EXTERNAL_OBJECTS =

AudioEqualizer: CMakeFiles/AudioEqualizer.dir/main.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/imgui/imgui.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/imgui/imgui_draw.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/imgui/imgui_widgets.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/imgui/imgui_tables.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/imgui/imgui_demo.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_sdl2.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/imgui/backends/imgui_impl_opengl3.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/imgui/imgui-knobs.cpp.o
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/build.make
AudioEqualizer: /opt/homebrew/lib/libfftw3.dylib
AudioEqualizer: /opt/homebrew/lib/libSDL2.dylib
AudioEqualizer: /opt/homebrew/lib/libSDL2_mixer.dylib
AudioEqualizer: /opt/homebrew/lib/libGLEW.dylib
AudioEqualizer: CMakeFiles/AudioEqualizer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/shivammourya/AudioEqualizer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable AudioEqualizer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AudioEqualizer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AudioEqualizer.dir/build: AudioEqualizer
.PHONY : CMakeFiles/AudioEqualizer.dir/build

CMakeFiles/AudioEqualizer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AudioEqualizer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AudioEqualizer.dir/clean

CMakeFiles/AudioEqualizer.dir/depend:
	cd /Users/shivammourya/AudioEqualizer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shivammourya/AudioEqualizer /Users/shivammourya/AudioEqualizer /Users/shivammourya/AudioEqualizer/build /Users/shivammourya/AudioEqualizer/build /Users/shivammourya/AudioEqualizer/build/CMakeFiles/AudioEqualizer.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/AudioEqualizer.dir/depend

