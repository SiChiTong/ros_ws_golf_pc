# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/raven/ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/raven/ros_ws/build

# Include any dependencies generated for this target.
include haptic_golf/CMakeFiles/MadgwickAHRS.dir/depend.make

# Include the progress variables for this target.
include haptic_golf/CMakeFiles/MadgwickAHRS.dir/progress.make

# Include the compile flags for this target's objects.
include haptic_golf/CMakeFiles/MadgwickAHRS.dir/flags.make

haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o: haptic_golf/CMakeFiles/MadgwickAHRS.dir/flags.make
haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o: /home/raven/ros_ws/src/haptic_golf/src/MadgwickAHRS.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raven/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o"
	cd /home/raven/ros_ws/build/haptic_golf && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o -c /home/raven/ros_ws/src/haptic_golf/src/MadgwickAHRS.cpp

haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.i"
	cd /home/raven/ros_ws/build/haptic_golf && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raven/ros_ws/src/haptic_golf/src/MadgwickAHRS.cpp > CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.i

haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.s"
	cd /home/raven/ros_ws/build/haptic_golf && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raven/ros_ws/src/haptic_golf/src/MadgwickAHRS.cpp -o CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.s

haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o.requires:

.PHONY : haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o.requires

haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o.provides: haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o.requires
	$(MAKE) -f haptic_golf/CMakeFiles/MadgwickAHRS.dir/build.make haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o.provides.build
.PHONY : haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o.provides

haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o.provides.build: haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o


# Object files for target MadgwickAHRS
MadgwickAHRS_OBJECTS = \
"CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o"

# External object files for target MadgwickAHRS
MadgwickAHRS_EXTERNAL_OBJECTS =

/home/raven/ros_ws/devel/lib/libMadgwickAHRS.so: haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o
/home/raven/ros_ws/devel/lib/libMadgwickAHRS.so: haptic_golf/CMakeFiles/MadgwickAHRS.dir/build.make
/home/raven/ros_ws/devel/lib/libMadgwickAHRS.so: haptic_golf/CMakeFiles/MadgwickAHRS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/raven/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/raven/ros_ws/devel/lib/libMadgwickAHRS.so"
	cd /home/raven/ros_ws/build/haptic_golf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MadgwickAHRS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
haptic_golf/CMakeFiles/MadgwickAHRS.dir/build: /home/raven/ros_ws/devel/lib/libMadgwickAHRS.so

.PHONY : haptic_golf/CMakeFiles/MadgwickAHRS.dir/build

haptic_golf/CMakeFiles/MadgwickAHRS.dir/requires: haptic_golf/CMakeFiles/MadgwickAHRS.dir/src/MadgwickAHRS.cpp.o.requires

.PHONY : haptic_golf/CMakeFiles/MadgwickAHRS.dir/requires

haptic_golf/CMakeFiles/MadgwickAHRS.dir/clean:
	cd /home/raven/ros_ws/build/haptic_golf && $(CMAKE_COMMAND) -P CMakeFiles/MadgwickAHRS.dir/cmake_clean.cmake
.PHONY : haptic_golf/CMakeFiles/MadgwickAHRS.dir/clean

haptic_golf/CMakeFiles/MadgwickAHRS.dir/depend:
	cd /home/raven/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/raven/ros_ws/src /home/raven/ros_ws/src/haptic_golf /home/raven/ros_ws/build /home/raven/ros_ws/build/haptic_golf /home/raven/ros_ws/build/haptic_golf/CMakeFiles/MadgwickAHRS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : haptic_golf/CMakeFiles/MadgwickAHRS.dir/depend

