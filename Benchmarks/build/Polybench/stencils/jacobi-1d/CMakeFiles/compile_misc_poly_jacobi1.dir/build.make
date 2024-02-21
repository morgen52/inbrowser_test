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

# Utility rule file for compile_misc_poly_jacobi1.

# Include any custom commands dependencies for this target.
include Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/compiler_depend.make

# Include the progress variables for this target.
include Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/progress.make

Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1: Polybench/stencils/jacobi-1d/jacobi-1d.js

Polybench/stencils/jacobi-1d/jacobi-1d.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling jacobi-1d.c to jacobi-1d.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/stencils/jacobi-1d && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/stencils/jacobi-1d/jacobi-1d.c -o jacobi-1d.js -lm -sALLOW_MEMORY_GROWTH=1 -I /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/utilities -DPOLYBENCH_DUMP_ARRAYS -DFP_ABSTOLERANCE=1e-5

compile_misc_poly_jacobi1: Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1
compile_misc_poly_jacobi1: Polybench/stencils/jacobi-1d/jacobi-1d.js
compile_misc_poly_jacobi1: Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/build.make
.PHONY : compile_misc_poly_jacobi1

# Rule to build all files generated by this target.
Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/build: compile_misc_poly_jacobi1
.PHONY : Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/build

Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/clean:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/stencils/jacobi-1d && $(CMAKE_COMMAND) -P CMakeFiles/compile_misc_poly_jacobi1.dir/cmake_clean.cmake
.PHONY : Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/clean

Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/depend:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/stencils/jacobi-1d /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/stencils/jacobi-1d /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Polybench/stencils/jacobi-1d/CMakeFiles/compile_misc_poly_jacobi1.dir/depend

