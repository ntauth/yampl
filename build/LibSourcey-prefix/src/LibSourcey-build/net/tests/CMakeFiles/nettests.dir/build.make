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
include net/tests/CMakeFiles/nettests.dir/depend.make

# Include the progress variables for this target.
include net/tests/CMakeFiles/nettests.dir/progress.make

# Include the compile flags for this target's objects.
include net/tests/CMakeFiles/nettests.dir/flags.make

net/tests/CMakeFiles/nettests.dir/nettests.cpp.o: net/tests/CMakeFiles/nettests.dir/flags.make
net/tests/CMakeFiles/nettests.dir/nettests.cpp.o: /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/net/tests/nettests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object net/tests/CMakeFiles/nettests.dir/nettests.cpp.o"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/net/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nettests.dir/nettests.cpp.o -c /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/net/tests/nettests.cpp

net/tests/CMakeFiles/nettests.dir/nettests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nettests.dir/nettests.cpp.i"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/net/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/net/tests/nettests.cpp > CMakeFiles/nettests.dir/nettests.cpp.i

net/tests/CMakeFiles/nettests.dir/nettests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nettests.dir/nettests.cpp.s"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/net/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/net/tests/nettests.cpp -o CMakeFiles/nettests.dir/nettests.cpp.s

net/tests/CMakeFiles/nettests.dir/nettests.cpp.o.requires:

.PHONY : net/tests/CMakeFiles/nettests.dir/nettests.cpp.o.requires

net/tests/CMakeFiles/nettests.dir/nettests.cpp.o.provides: net/tests/CMakeFiles/nettests.dir/nettests.cpp.o.requires
	$(MAKE) -f net/tests/CMakeFiles/nettests.dir/build.make net/tests/CMakeFiles/nettests.dir/nettests.cpp.o.provides.build
.PHONY : net/tests/CMakeFiles/nettests.dir/nettests.cpp.o.provides

net/tests/CMakeFiles/nettests.dir/nettests.cpp.o.provides.build: net/tests/CMakeFiles/nettests.dir/nettests.cpp.o


# Object files for target nettests
nettests_OBJECTS = \
"CMakeFiles/nettests.dir/nettests.cpp.o"

# External object files for target nettests
nettests_EXTERNAL_OBJECTS =

net/tests/nettests: net/tests/CMakeFiles/nettests.dir/nettests.cpp.o
net/tests/nettests: net/tests/CMakeFiles/nettests.dir/build.make
net/tests/nettests: net/libscy_net.so.1.1.4
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libssl.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libcrypto.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libssl.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libcrypto.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libssl.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libcrypto.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libssl.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libcrypto.so
net/tests/nettests: crypto/libscy_crypto.so.1.1.4
net/tests/nettests: base/libscy_base.so.1.1.4
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libssl.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libcrypto.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libssl.so
net/tests/nettests: /usr/lib/x86_64-linux-gnu/libcrypto.so
net/tests/nettests: vendor/libuv/liblibuv.so
net/tests/nettests: vendor/minizip/libminizip.so
net/tests/nettests: vendor/zlib/libzlib.so.1.2.8
net/tests/nettests: vendor/http_parser/libhttp_parser.so
net/tests/nettests: net/tests/CMakeFiles/nettests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable nettests"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/net/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nettests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
net/tests/CMakeFiles/nettests.dir/build: net/tests/nettests

.PHONY : net/tests/CMakeFiles/nettests.dir/build

net/tests/CMakeFiles/nettests.dir/requires: net/tests/CMakeFiles/nettests.dir/nettests.cpp.o.requires

.PHONY : net/tests/CMakeFiles/nettests.dir/requires

net/tests/CMakeFiles/nettests.dir/clean:
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/net/tests && $(CMAKE_COMMAND) -P CMakeFiles/nettests.dir/cmake_clean.cmake
.PHONY : net/tests/CMakeFiles/nettests.dir/clean

net/tests/CMakeFiles/nettests.dir/depend:
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/net/tests /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/net/tests /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/net/tests/CMakeFiles/nettests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : net/tests/CMakeFiles/nettests.dir/depend

