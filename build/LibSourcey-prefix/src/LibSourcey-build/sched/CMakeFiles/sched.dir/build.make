# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build

# Include any dependencies generated for this target.
include sched/CMakeFiles/sched.dir/depend.make

# Include the progress variables for this target.
include sched/CMakeFiles/sched.dir/progress.make

# Include the compile flags for this target's objects.
include sched/CMakeFiles/sched.dir/flags.make

sched/CMakeFiles/sched.dir/src/scheduler.cpp.o: sched/CMakeFiles/sched.dir/flags.make
sched/CMakeFiles/sched.dir/src/scheduler.cpp.o: /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/scheduler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sched/CMakeFiles/sched.dir/src/scheduler.cpp.o"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sched.dir/src/scheduler.cpp.o -c /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/scheduler.cpp

sched/CMakeFiles/sched.dir/src/scheduler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sched.dir/src/scheduler.cpp.i"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/scheduler.cpp > CMakeFiles/sched.dir/src/scheduler.cpp.i

sched/CMakeFiles/sched.dir/src/scheduler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sched.dir/src/scheduler.cpp.s"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/scheduler.cpp -o CMakeFiles/sched.dir/src/scheduler.cpp.s

sched/CMakeFiles/sched.dir/src/scheduler.cpp.o.requires:

.PHONY : sched/CMakeFiles/sched.dir/src/scheduler.cpp.o.requires

sched/CMakeFiles/sched.dir/src/scheduler.cpp.o.provides: sched/CMakeFiles/sched.dir/src/scheduler.cpp.o.requires
	$(MAKE) -f sched/CMakeFiles/sched.dir/build.make sched/CMakeFiles/sched.dir/src/scheduler.cpp.o.provides.build
.PHONY : sched/CMakeFiles/sched.dir/src/scheduler.cpp.o.provides

sched/CMakeFiles/sched.dir/src/scheduler.cpp.o.provides.build: sched/CMakeFiles/sched.dir/src/scheduler.cpp.o


sched/CMakeFiles/sched.dir/src/task.cpp.o: sched/CMakeFiles/sched.dir/flags.make
sched/CMakeFiles/sched.dir/src/task.cpp.o: /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/task.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sched/CMakeFiles/sched.dir/src/task.cpp.o"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sched.dir/src/task.cpp.o -c /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/task.cpp

sched/CMakeFiles/sched.dir/src/task.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sched.dir/src/task.cpp.i"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/task.cpp > CMakeFiles/sched.dir/src/task.cpp.i

sched/CMakeFiles/sched.dir/src/task.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sched.dir/src/task.cpp.s"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/task.cpp -o CMakeFiles/sched.dir/src/task.cpp.s

sched/CMakeFiles/sched.dir/src/task.cpp.o.requires:

.PHONY : sched/CMakeFiles/sched.dir/src/task.cpp.o.requires

sched/CMakeFiles/sched.dir/src/task.cpp.o.provides: sched/CMakeFiles/sched.dir/src/task.cpp.o.requires
	$(MAKE) -f sched/CMakeFiles/sched.dir/build.make sched/CMakeFiles/sched.dir/src/task.cpp.o.provides.build
.PHONY : sched/CMakeFiles/sched.dir/src/task.cpp.o.provides

sched/CMakeFiles/sched.dir/src/task.cpp.o.provides.build: sched/CMakeFiles/sched.dir/src/task.cpp.o


sched/CMakeFiles/sched.dir/src/trigger.cpp.o: sched/CMakeFiles/sched.dir/flags.make
sched/CMakeFiles/sched.dir/src/trigger.cpp.o: /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/trigger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object sched/CMakeFiles/sched.dir/src/trigger.cpp.o"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sched.dir/src/trigger.cpp.o -c /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/trigger.cpp

sched/CMakeFiles/sched.dir/src/trigger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sched.dir/src/trigger.cpp.i"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/trigger.cpp > CMakeFiles/sched.dir/src/trigger.cpp.i

sched/CMakeFiles/sched.dir/src/trigger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sched.dir/src/trigger.cpp.s"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched/src/trigger.cpp -o CMakeFiles/sched.dir/src/trigger.cpp.s

sched/CMakeFiles/sched.dir/src/trigger.cpp.o.requires:

.PHONY : sched/CMakeFiles/sched.dir/src/trigger.cpp.o.requires

sched/CMakeFiles/sched.dir/src/trigger.cpp.o.provides: sched/CMakeFiles/sched.dir/src/trigger.cpp.o.requires
	$(MAKE) -f sched/CMakeFiles/sched.dir/build.make sched/CMakeFiles/sched.dir/src/trigger.cpp.o.provides.build
.PHONY : sched/CMakeFiles/sched.dir/src/trigger.cpp.o.provides

sched/CMakeFiles/sched.dir/src/trigger.cpp.o.provides.build: sched/CMakeFiles/sched.dir/src/trigger.cpp.o


# Object files for target sched
sched_OBJECTS = \
"CMakeFiles/sched.dir/src/scheduler.cpp.o" \
"CMakeFiles/sched.dir/src/task.cpp.o" \
"CMakeFiles/sched.dir/src/trigger.cpp.o"

# External object files for target sched
sched_EXTERNAL_OBJECTS =

sched/libscy_sched.so.1.1.4: sched/CMakeFiles/sched.dir/src/scheduler.cpp.o
sched/libscy_sched.so.1.1.4: sched/CMakeFiles/sched.dir/src/task.cpp.o
sched/libscy_sched.so.1.1.4: sched/CMakeFiles/sched.dir/src/trigger.cpp.o
sched/libscy_sched.so.1.1.4: sched/CMakeFiles/sched.dir/build.make
sched/libscy_sched.so.1.1.4: json/libscy_json.so.1.1.4
sched/libscy_sched.so.1.1.4: /usr/lib/x86_64-linux-gnu/libssl.so
sched/libscy_sched.so.1.1.4: /usr/lib/x86_64-linux-gnu/libcrypto.so
sched/libscy_sched.so.1.1.4: /usr/lib/x86_64-linux-gnu/libssl.so
sched/libscy_sched.so.1.1.4: /usr/lib/x86_64-linux-gnu/libcrypto.so
sched/libscy_sched.so.1.1.4: base/libscy_base.so.1.1.4
sched/libscy_sched.so.1.1.4: /usr/lib/x86_64-linux-gnu/libssl.so
sched/libscy_sched.so.1.1.4: /usr/lib/x86_64-linux-gnu/libcrypto.so
sched/libscy_sched.so.1.1.4: /usr/lib/x86_64-linux-gnu/libssl.so
sched/libscy_sched.so.1.1.4: /usr/lib/x86_64-linux-gnu/libcrypto.so
sched/libscy_sched.so.1.1.4: vendor/libuv/liblibuv.so
sched/libscy_sched.so.1.1.4: vendor/minizip/libminizip.so
sched/libscy_sched.so.1.1.4: vendor/zlib/libzlib.so.1.2.8
sched/libscy_sched.so.1.1.4: vendor/http_parser/libhttp_parser.so
sched/libscy_sched.so.1.1.4: sched/CMakeFiles/sched.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libscy_sched.so"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sched.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && $(CMAKE_COMMAND) -E cmake_symlink_library libscy_sched.so.1.1.4 libscy_sched.so.1.1 libscy_sched.so

sched/libscy_sched.so.1.1: sched/libscy_sched.so.1.1.4
	@$(CMAKE_COMMAND) -E touch_nocreate sched/libscy_sched.so.1.1

sched/libscy_sched.so: sched/libscy_sched.so.1.1.4
	@$(CMAKE_COMMAND) -E touch_nocreate sched/libscy_sched.so

# Rule to build all files generated by this target.
sched/CMakeFiles/sched.dir/build: sched/libscy_sched.so

.PHONY : sched/CMakeFiles/sched.dir/build

sched/CMakeFiles/sched.dir/requires: sched/CMakeFiles/sched.dir/src/scheduler.cpp.o.requires
sched/CMakeFiles/sched.dir/requires: sched/CMakeFiles/sched.dir/src/task.cpp.o.requires
sched/CMakeFiles/sched.dir/requires: sched/CMakeFiles/sched.dir/src/trigger.cpp.o.requires

.PHONY : sched/CMakeFiles/sched.dir/requires

sched/CMakeFiles/sched.dir/clean:
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched && $(CMAKE_COMMAND) -P CMakeFiles/sched.dir/cmake_clean.cmake
.PHONY : sched/CMakeFiles/sched.dir/clean

sched/CMakeFiles/sched.dir/depend:
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/sched /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/sched/CMakeFiles/sched.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sched/CMakeFiles/sched.dir/depend

