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
include av/tests/CMakeFiles/avtests.dir/depend.make

# Include the progress variables for this target.
include av/tests/CMakeFiles/avtests.dir/progress.make

# Include the compile flags for this target's objects.
include av/tests/CMakeFiles/avtests.dir/flags.make

av/tests/CMakeFiles/avtests.dir/avtests.cpp.o: av/tests/CMakeFiles/avtests.dir/flags.make
av/tests/CMakeFiles/avtests.dir/avtests.cpp.o: /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/av/tests/avtests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object av/tests/CMakeFiles/avtests.dir/avtests.cpp.o"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/av/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/avtests.dir/avtests.cpp.o -c /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/av/tests/avtests.cpp

av/tests/CMakeFiles/avtests.dir/avtests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avtests.dir/avtests.cpp.i"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/av/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/av/tests/avtests.cpp > CMakeFiles/avtests.dir/avtests.cpp.i

av/tests/CMakeFiles/avtests.dir/avtests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avtests.dir/avtests.cpp.s"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/av/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/av/tests/avtests.cpp -o CMakeFiles/avtests.dir/avtests.cpp.s

av/tests/CMakeFiles/avtests.dir/avtests.cpp.o.requires:

.PHONY : av/tests/CMakeFiles/avtests.dir/avtests.cpp.o.requires

av/tests/CMakeFiles/avtests.dir/avtests.cpp.o.provides: av/tests/CMakeFiles/avtests.dir/avtests.cpp.o.requires
	$(MAKE) -f av/tests/CMakeFiles/avtests.dir/build.make av/tests/CMakeFiles/avtests.dir/avtests.cpp.o.provides.build
.PHONY : av/tests/CMakeFiles/avtests.dir/avtests.cpp.o.provides

av/tests/CMakeFiles/avtests.dir/avtests.cpp.o.provides.build: av/tests/CMakeFiles/avtests.dir/avtests.cpp.o


# Object files for target avtests
avtests_OBJECTS = \
"CMakeFiles/avtests.dir/avtests.cpp.o"

# External object files for target avtests
avtests_EXTERNAL_OBJECTS =

av/tests/avtests: av/tests/CMakeFiles/avtests.dir/avtests.cpp.o
av/tests/avtests: av/tests/CMakeFiles/avtests.dir/build.make
av/tests/avtests: av/libscy_av.so.1.1.4
av/tests/avtests: /usr/lib/x86_64-linux-gnu/libssl.so
av/tests/avtests: /usr/lib/x86_64-linux-gnu/libcrypto.so
av/tests/avtests: /usr/lib/x86_64-linux-gnu/libssl.so
av/tests/avtests: /usr/lib/x86_64-linux-gnu/libcrypto.so
av/tests/avtests: base/libscy_base.so.1.1.4
av/tests/avtests: /usr/lib/x86_64-linux-gnu/libssl.so
av/tests/avtests: /usr/lib/x86_64-linux-gnu/libcrypto.so
av/tests/avtests: /usr/lib/x86_64-linux-gnu/libssl.so
av/tests/avtests: /usr/lib/x86_64-linux-gnu/libcrypto.so
av/tests/avtests: vendor/libuv/liblibuv.so
av/tests/avtests: vendor/minizip/libminizip.so
av/tests/avtests: vendor/zlib/libzlib.so.1.2.8
av/tests/avtests: vendor/http_parser/libhttp_parser.so
av/tests/avtests: av/tests/CMakeFiles/avtests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable avtests"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/av/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avtests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
av/tests/CMakeFiles/avtests.dir/build: av/tests/avtests

.PHONY : av/tests/CMakeFiles/avtests.dir/build

av/tests/CMakeFiles/avtests.dir/requires: av/tests/CMakeFiles/avtests.dir/avtests.cpp.o.requires

.PHONY : av/tests/CMakeFiles/avtests.dir/requires

av/tests/CMakeFiles/avtests.dir/clean:
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/av/tests && $(CMAKE_COMMAND) -P CMakeFiles/avtests.dir/cmake_clean.cmake
.PHONY : av/tests/CMakeFiles/avtests.dir/clean

av/tests/CMakeFiles/avtests.dir/depend:
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/av/tests /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/av/tests /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/av/tests/CMakeFiles/avtests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : av/tests/CMakeFiles/avtests.dir/depend

