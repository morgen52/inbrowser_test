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

# Utility rule file for compile_misc_poly_seidel.

# Include any custom commands dependencies for this target.
include Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/compiler_depend.make

# Include the progress variables for this target.
include Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/progress.make

Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel: Polybench/stencils/seidel-2d/seidel-2d.js

Polybench/stencils/seidel-2d/seidel-2d.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling seidel-2d.c to seidel-2d.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/stencils/seidel-2d && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/stencils/seidel-2d/seidel-2d.c -o seidel-2d.js -lm -sALLOW_MEMORY_GROWTH=1 -O3 -I /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/utilities -DPOLYBENCH_DUMP_ARRAYS -DFP_ABSTOLERANCE=1e-5 -sALLOW_MEMORY_GROWTH=1 -O2

compile_misc_poly_seidel: Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel
compile_misc_poly_seidel: Polybench/stencils/seidel-2d/seidel-2d.js
compile_misc_poly_seidel: Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/build.make
.PHONY : compile_misc_poly_seidel

# Rule to build all files generated by this target.
Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/build: compile_misc_poly_seidel
.PHONY : Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/build

Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/clean:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/stencils/seidel-2d && $(CMAKE_COMMAND) -P CMakeFiles/compile_misc_poly_seidel.dir/cmake_clean.cmake
.PHONY : Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/clean

Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/depend:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/stencils/seidel-2d /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/stencils/seidel-2d /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Polybench/stencils/seidel-2d/CMakeFiles/compile_misc_poly_seidel.dir/depend

