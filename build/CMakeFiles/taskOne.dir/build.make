# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/denizcamalan/respitories/TestAssignment

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/denizcamalan/respitories/TestAssignment/build

# Include any dependencies generated for this target.
include CMakeFiles/taskOne.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/taskOne.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/taskOne.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/taskOne.dir/flags.make

CMakeFiles/taskOne.dir/statusManage.cpp.o: CMakeFiles/taskOne.dir/flags.make
CMakeFiles/taskOne.dir/statusManage.cpp.o: ../statusManage.cpp
CMakeFiles/taskOne.dir/statusManage.cpp.o: CMakeFiles/taskOne.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/denizcamalan/respitories/TestAssignment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/taskOne.dir/statusManage.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/taskOne.dir/statusManage.cpp.o -MF CMakeFiles/taskOne.dir/statusManage.cpp.o.d -o CMakeFiles/taskOne.dir/statusManage.cpp.o -c /Users/denizcamalan/respitories/TestAssignment/statusManage.cpp

CMakeFiles/taskOne.dir/statusManage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/taskOne.dir/statusManage.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/denizcamalan/respitories/TestAssignment/statusManage.cpp > CMakeFiles/taskOne.dir/statusManage.cpp.i

CMakeFiles/taskOne.dir/statusManage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/taskOne.dir/statusManage.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/denizcamalan/respitories/TestAssignment/statusManage.cpp -o CMakeFiles/taskOne.dir/statusManage.cpp.s

# Object files for target taskOne
taskOne_OBJECTS = \
"CMakeFiles/taskOne.dir/statusManage.cpp.o"

# External object files for target taskOne
taskOne_EXTERNAL_OBJECTS =

libtaskOne.dylib: CMakeFiles/taskOne.dir/statusManage.cpp.o
libtaskOne.dylib: CMakeFiles/taskOne.dir/build.make
libtaskOne.dylib: CMakeFiles/taskOne.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/denizcamalan/respitories/TestAssignment/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libtaskOne.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/taskOne.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/taskOne.dir/build: libtaskOne.dylib
.PHONY : CMakeFiles/taskOne.dir/build

CMakeFiles/taskOne.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/taskOne.dir/cmake_clean.cmake
.PHONY : CMakeFiles/taskOne.dir/clean

CMakeFiles/taskOne.dir/depend:
	cd /Users/denizcamalan/respitories/TestAssignment/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/denizcamalan/respitories/TestAssignment /Users/denizcamalan/respitories/TestAssignment /Users/denizcamalan/respitories/TestAssignment/build /Users/denizcamalan/respitories/TestAssignment/build /Users/denizcamalan/respitories/TestAssignment/build/CMakeFiles/taskOne.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/taskOne.dir/depend

