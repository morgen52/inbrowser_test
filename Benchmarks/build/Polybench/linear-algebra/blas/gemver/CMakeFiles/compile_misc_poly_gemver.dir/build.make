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

# Utility rule file for compile_misc_poly_gemver.

# Include any custom commands dependencies for this target.
include Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/compiler_depend.make

# Include the progress variables for this target.
include Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/progress.make

Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver: Polybench/linear-algebra/blas/gemver/gemver.js

Polybench/linear-algebra/blas/gemver/gemver.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling gemver.c to gemver.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/linear-algebra/blas/gemver && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/linear-algebra/blas/gemver/gemver.c -o gemver.js -lm -sALLOW_MEMORY_GROWTH=1 -O3 -I /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/utilities -DPOLYBENCH_DUMP_ARRAYS -ffp-contract=off -DFMA_DISABLED=1 -DFP_ABSTOLERANCE=1e-5 -sALLOW_MEMORY_GROWTH=1 -O2

compile_misc_poly_gemver: Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver
compile_misc_poly_gemver: Polybench/linear-algebra/blas/gemver/gemver.js
compile_misc_poly_gemver: Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/build.make
.PHONY : compile_misc_poly_gemver

# Rule to build all files generated by this target.
Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/build: compile_misc_poly_gemver
.PHONY : Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/build

Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/clean:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/linear-algebra/blas/gemver && $(CMAKE_COMMAND) -P CMakeFiles/compile_misc_poly_gemver.dir/cmake_clean.cmake
.PHONY : Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/clean

Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/depend:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/linear-algebra/blas/gemver /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/linear-algebra/blas/gemver /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Polybench/linear-algebra/blas/gemver/CMakeFiles/compile_misc_poly_gemver.dir/depend

