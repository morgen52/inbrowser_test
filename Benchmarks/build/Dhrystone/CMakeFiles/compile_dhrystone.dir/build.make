# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/morgen/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/morgen/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build

# Utility rule file for compile_dhrystone.

# Include any custom commands dependencies for this target.
include Dhrystone/CMakeFiles/compile_dhrystone.dir/compiler_depend.make

# Include the progress variables for this target.
include Dhrystone/CMakeFiles/compile_dhrystone.dir/progress.make

Dhrystone/CMakeFiles/compile_dhrystone: Dhrystone/fldry.js
Dhrystone/CMakeFiles/compile_dhrystone: Dhrystone/dry.js

Dhrystone/dry.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling dry.c to dry.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Dhrystone && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Dhrystone/dry.c -o dry.js -lm

Dhrystone/fldry.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Compiling fldry.c to fldry.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Dhrystone && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Dhrystone/fldry.c -o fldry.js -lm

compile_dhrystone: Dhrystone/CMakeFiles/compile_dhrystone
compile_dhrystone: Dhrystone/dry.js
compile_dhrystone: Dhrystone/fldry.js
compile_dhrystone: Dhrystone/CMakeFiles/compile_dhrystone.dir/build.make
.PHONY : compile_dhrystone

# Rule to build all files generated by this target.
Dhrystone/CMakeFiles/compile_dhrystone.dir/build: compile_dhrystone
.PHONY : Dhrystone/CMakeFiles/compile_dhrystone.dir/build

Dhrystone/CMakeFiles/compile_dhrystone.dir/clean:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Dhrystone && $(CMAKE_COMMAND) -P CMakeFiles/compile_dhrystone.dir/cmake_clean.cmake
.PHONY : Dhrystone/CMakeFiles/compile_dhrystone.dir/clean

Dhrystone/CMakeFiles/compile_dhrystone.dir/depend:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Dhrystone /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Dhrystone /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Dhrystone/CMakeFiles/compile_dhrystone.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Dhrystone/CMakeFiles/compile_dhrystone.dir/depend

