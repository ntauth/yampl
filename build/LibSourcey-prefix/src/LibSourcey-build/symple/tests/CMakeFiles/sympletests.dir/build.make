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
include symple/tests/CMakeFiles/sympletests.dir/depend.make

# Include the progress variables for this target.
include symple/tests/CMakeFiles/sympletests.dir/progress.make

# Include the compile flags for this target's objects.
include symple/tests/CMakeFiles/sympletests.dir/flags.make

symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o: symple/tests/CMakeFiles/sympletests.dir/flags.make
symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o: /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/symple/tests/sympletests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/symple/tests && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sympletests.dir/sympletests.cpp.o -c /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/symple/tests/sympletests.cpp

symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sympletests.dir/sympletests.cpp.i"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/symple/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/symple/tests/sympletests.cpp > CMakeFiles/sympletests.dir/sympletests.cpp.i

symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sympletests.dir/sympletests.cpp.s"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/symple/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/symple/tests/sympletests.cpp -o CMakeFiles/sympletests.dir/sympletests.cpp.s

symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o.requires:

.PHONY : symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o.requires

symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o.provides: symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o.requires
	$(MAKE) -f symple/tests/CMakeFiles/sympletests.dir/build.make symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o.provides.build
.PHONY : symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o.provides

symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o.provides.build: symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o


# Object files for target sympletests
sympletests_OBJECTS = \
"CMakeFiles/sympletests.dir/sympletests.cpp.o"

# External object files for target sympletests
sympletests_EXTERNAL_OBJECTS =

symple/tests/sympletests: symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o
symple/tests/sympletests: symple/tests/CMakeFiles/sympletests.dir/build.make
symple/tests/sympletests: symple/libscy_symple.so.1.1.4
symple/tests/sympletests: util/libscy_util.so.1.1.4
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libssl.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libcrypto.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libssl.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libcrypto.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libssl.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libcrypto.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libssl.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libcrypto.so
symple/tests/sympletests: socketio/libscy_socketio.so.1.1.4
symple/tests/sympletests: http/libscy_http.so.1.1.4
symple/tests/sympletests: net/libscy_net.so.1.1.4
symple/tests/sympletests: crypto/libscy_crypto.so.1.1.4
symple/tests/sympletests: json/libscy_json.so.1.1.4
symple/tests/sympletests: base/libscy_base.so.1.1.4
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libssl.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libcrypto.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libssl.so
symple/tests/sympletests: /usr/lib/x86_64-linux-gnu/libcrypto.so
symple/tests/sympletests: vendor/libuv/liblibuv.so
symple/tests/sympletests: vendor/minizip/libminizip.so
symple/tests/sympletests: vendor/zlib/libzlib.so.1.2.8
symple/tests/sympletests: vendor/http_parser/libhttp_parser.so
symple/tests/sympletests: symple/tests/CMakeFiles/sympletests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sympletests"
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/symple/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sympletests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
symple/tests/CMakeFiles/sympletests.dir/build: symple/tests/sympletests

.PHONY : symple/tests/CMakeFiles/sympletests.dir/build

symple/tests/CMakeFiles/sympletests.dir/requires: symple/tests/CMakeFiles/sympletests.dir/sympletests.cpp.o.requires

.PHONY : symple/tests/CMakeFiles/sympletests.dir/requires

symple/tests/CMakeFiles/sympletests.dir/clean:
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/symple/tests && $(CMAKE_COMMAND) -P CMakeFiles/sympletests.dir/cmake_clean.cmake
.PHONY : symple/tests/CMakeFiles/sympletests.dir/clean

symple/tests/CMakeFiles/sympletests.dir/depend:
	cd /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy /home/ntauthority/Desktop/CERN-HSF/yampl/build/libscy/src/symple/tests /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/symple/tests /home/ntauthority/Desktop/CERN-HSF/yampl/build/LibSourcey-prefix/src/LibSourcey-build/symple/tests/CMakeFiles/sympletests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : symple/tests/CMakeFiles/sympletests.dir/depend

