# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/vincent/clion-2019.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/vincent/clion-2019.3.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/draw.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/draw.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/draw.dir/flags.make

CMakeFiles/draw.dir/src/texture.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/src/texture.cpp.o: ../src/texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/draw.dir/src/texture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/src/texture.cpp.o -c /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/texture.cpp

CMakeFiles/draw.dir/src/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/src/texture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/texture.cpp > CMakeFiles/draw.dir/src/texture.cpp.i

CMakeFiles/draw.dir/src/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/src/texture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/texture.cpp -o CMakeFiles/draw.dir/src/texture.cpp.s

CMakeFiles/draw.dir/src/triangulation.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/src/triangulation.cpp.o: ../src/triangulation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/draw.dir/src/triangulation.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/src/triangulation.cpp.o -c /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/triangulation.cpp

CMakeFiles/draw.dir/src/triangulation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/src/triangulation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/triangulation.cpp > CMakeFiles/draw.dir/src/triangulation.cpp.i

CMakeFiles/draw.dir/src/triangulation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/src/triangulation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/triangulation.cpp -o CMakeFiles/draw.dir/src/triangulation.cpp.s

CMakeFiles/draw.dir/src/svgparser.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/src/svgparser.cpp.o: ../src/svgparser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/draw.dir/src/svgparser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/src/svgparser.cpp.o -c /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/svgparser.cpp

CMakeFiles/draw.dir/src/svgparser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/src/svgparser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/svgparser.cpp > CMakeFiles/draw.dir/src/svgparser.cpp.i

CMakeFiles/draw.dir/src/svgparser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/src/svgparser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/svgparser.cpp -o CMakeFiles/draw.dir/src/svgparser.cpp.s

CMakeFiles/draw.dir/src/transforms.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/src/transforms.cpp.o: ../src/transforms.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/draw.dir/src/transforms.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/src/transforms.cpp.o -c /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/transforms.cpp

CMakeFiles/draw.dir/src/transforms.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/src/transforms.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/transforms.cpp > CMakeFiles/draw.dir/src/transforms.cpp.i

CMakeFiles/draw.dir/src/transforms.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/src/transforms.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/transforms.cpp -o CMakeFiles/draw.dir/src/transforms.cpp.s

CMakeFiles/draw.dir/src/rasterizer.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/src/rasterizer.cpp.o: ../src/rasterizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/draw.dir/src/rasterizer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/src/rasterizer.cpp.o -c /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/rasterizer.cpp

CMakeFiles/draw.dir/src/rasterizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/src/rasterizer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/rasterizer.cpp > CMakeFiles/draw.dir/src/rasterizer.cpp.i

CMakeFiles/draw.dir/src/rasterizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/src/rasterizer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/rasterizer.cpp -o CMakeFiles/draw.dir/src/rasterizer.cpp.s

CMakeFiles/draw.dir/src/drawrend.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/src/drawrend.cpp.o: ../src/drawrend.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/draw.dir/src/drawrend.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/src/drawrend.cpp.o -c /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/drawrend.cpp

CMakeFiles/draw.dir/src/drawrend.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/src/drawrend.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/drawrend.cpp > CMakeFiles/draw.dir/src/drawrend.cpp.i

CMakeFiles/draw.dir/src/drawrend.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/src/drawrend.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/drawrend.cpp -o CMakeFiles/draw.dir/src/drawrend.cpp.s

CMakeFiles/draw.dir/src/svg.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/src/svg.cpp.o: ../src/svg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/draw.dir/src/svg.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/src/svg.cpp.o -c /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/svg.cpp

CMakeFiles/draw.dir/src/svg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/src/svg.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/svg.cpp > CMakeFiles/draw.dir/src/svg.cpp.i

CMakeFiles/draw.dir/src/svg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/src/svg.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/svg.cpp -o CMakeFiles/draw.dir/src/svg.cpp.s

CMakeFiles/draw.dir/src/main.cpp.o: CMakeFiles/draw.dir/flags.make
CMakeFiles/draw.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/draw.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/draw.dir/src/main.cpp.o -c /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/main.cpp

CMakeFiles/draw.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/draw.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/main.cpp > CMakeFiles/draw.dir/src/main.cpp.i

CMakeFiles/draw.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/draw.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/src/main.cpp -o CMakeFiles/draw.dir/src/main.cpp.s

# Object files for target draw
draw_OBJECTS = \
"CMakeFiles/draw.dir/src/texture.cpp.o" \
"CMakeFiles/draw.dir/src/triangulation.cpp.o" \
"CMakeFiles/draw.dir/src/svgparser.cpp.o" \
"CMakeFiles/draw.dir/src/transforms.cpp.o" \
"CMakeFiles/draw.dir/src/rasterizer.cpp.o" \
"CMakeFiles/draw.dir/src/drawrend.cpp.o" \
"CMakeFiles/draw.dir/src/svg.cpp.o" \
"CMakeFiles/draw.dir/src/main.cpp.o"

# External object files for target draw
draw_EXTERNAL_OBJECTS =

draw: CMakeFiles/draw.dir/src/texture.cpp.o
draw: CMakeFiles/draw.dir/src/triangulation.cpp.o
draw: CMakeFiles/draw.dir/src/svgparser.cpp.o
draw: CMakeFiles/draw.dir/src/transforms.cpp.o
draw: CMakeFiles/draw.dir/src/rasterizer.cpp.o
draw: CMakeFiles/draw.dir/src/drawrend.cpp.o
draw: CMakeFiles/draw.dir/src/svg.cpp.o
draw: CMakeFiles/draw.dir/src/main.cpp.o
draw: CMakeFiles/draw.dir/build.make
draw: CGL/libCGL.a
draw: /usr/lib/x86_64-linux-gnu/libfreetype.so
draw: CGL/deps/glew/libglew.a
draw: CGL/deps/glfw/src/libglfw3.a
draw: /usr/lib/x86_64-linux-gnu/librt.so
draw: /usr/lib/x86_64-linux-gnu/libm.so
draw: /usr/lib/x86_64-linux-gnu/libX11.so
draw: /usr/lib/x86_64-linux-gnu/libGL.so
draw: CMakeFiles/draw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable draw"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/draw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/draw.dir/build: draw

.PHONY : CMakeFiles/draw.dir/build

CMakeFiles/draw.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/draw.dir/cmake_clean.cmake
.PHONY : CMakeFiles/draw.dir/clean

CMakeFiles/draw.dir/depend:
	cd /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug /home/vincent/workplace/cs284a/p1-rasterizer-sp20-vincentndo/cmake-build-debug/CMakeFiles/draw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/draw.dir/depend

