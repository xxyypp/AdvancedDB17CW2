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
CMAKE_SOURCE_DIR = /home/py715/AdvancedDB17CW2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/py715/AdvancedDB17CW2/build

# Include any dependencies generated for this target.
include CMakeFiles/ADBCoursework2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ADBCoursework2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ADBCoursework2.dir/flags.make

review.csv:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/py715/AdvancedDB17CW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating review.csv"
	bcp select\ business_id,\ stars\ from\ review queryout review.csv -dyelp -Slocalhost -U sa -PAdvancedDB17 -c

business.csv:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/py715/AdvancedDB17CW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating business.csv"
	bcp select\ id,\ latitude,\ longitude\ from\ business queryout business.csv -dyelp -Slocalhost -U sa -PAdvancedDB17 -c

CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o: CMakeFiles/ADBCoursework2.dir/flags.make
CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o: ../ADBCoursework2.cpp
CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o: review.csv
CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o: business.csv
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/py715/AdvancedDB17CW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o -c /home/py715/AdvancedDB17CW2/ADBCoursework2.cpp

CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/py715/AdvancedDB17CW2/ADBCoursework2.cpp > CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.i

CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/py715/AdvancedDB17CW2/ADBCoursework2.cpp -o CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.s

CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o.requires:

.PHONY : CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o.requires

CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o.provides: CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o.requires
	$(MAKE) -f CMakeFiles/ADBCoursework2.dir/build.make CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o.provides.build
.PHONY : CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o.provides

CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o.provides.build: CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o


CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o: CMakeFiles/ADBCoursework2.dir/flags.make
CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o: ../Implementation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/py715/AdvancedDB17CW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o -c /home/py715/AdvancedDB17CW2/Implementation.cpp

CMakeFiles/ADBCoursework2.dir/Implementation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ADBCoursework2.dir/Implementation.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/py715/AdvancedDB17CW2/Implementation.cpp > CMakeFiles/ADBCoursework2.dir/Implementation.cpp.i

CMakeFiles/ADBCoursework2.dir/Implementation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ADBCoursework2.dir/Implementation.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/py715/AdvancedDB17CW2/Implementation.cpp -o CMakeFiles/ADBCoursework2.dir/Implementation.cpp.s

CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o.requires:

.PHONY : CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o.requires

CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o.provides: CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o.requires
	$(MAKE) -f CMakeFiles/ADBCoursework2.dir/build.make CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o.provides.build
.PHONY : CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o.provides

CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o.provides.build: CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o


# Object files for target ADBCoursework2
ADBCoursework2_OBJECTS = \
"CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o" \
"CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o"

# External object files for target ADBCoursework2
ADBCoursework2_EXTERNAL_OBJECTS =

ADBCoursework2: CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o
ADBCoursework2: CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o
ADBCoursework2: CMakeFiles/ADBCoursework2.dir/build.make
ADBCoursework2: CMakeFiles/ADBCoursework2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/py715/AdvancedDB17CW2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ADBCoursework2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ADBCoursework2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ADBCoursework2.dir/build: ADBCoursework2

.PHONY : CMakeFiles/ADBCoursework2.dir/build

CMakeFiles/ADBCoursework2.dir/requires: CMakeFiles/ADBCoursework2.dir/ADBCoursework2.cpp.o.requires
CMakeFiles/ADBCoursework2.dir/requires: CMakeFiles/ADBCoursework2.dir/Implementation.cpp.o.requires

.PHONY : CMakeFiles/ADBCoursework2.dir/requires

CMakeFiles/ADBCoursework2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ADBCoursework2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ADBCoursework2.dir/clean

CMakeFiles/ADBCoursework2.dir/depend: review.csv
CMakeFiles/ADBCoursework2.dir/depend: business.csv
	cd /home/py715/AdvancedDB17CW2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/py715/AdvancedDB17CW2 /home/py715/AdvancedDB17CW2 /home/py715/AdvancedDB17CW2/build /home/py715/AdvancedDB17CW2/build /home/py715/AdvancedDB17CW2/build/CMakeFiles/ADBCoursework2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ADBCoursework2.dir/depend
