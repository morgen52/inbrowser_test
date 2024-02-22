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

# Utility rule file for compile_misc_poly_gesummv.

# Include any custom commands dependencies for this target.
include Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/compiler_depend.make

# Include the progress variables for this target.
include Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/progress.make

Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv: Polybench/linear-algebra/blas/gesummv/gesummv.js

Polybench/linear-algebra/blas/gesummv/gesummv.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling gesummv.c to gesummv.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/linear-algebra/blas/gesummv && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/linear-algebra/blas/gesummv/gesummv.c -o gesummv.js -lm -sALLOW_MEMORY_GROWTH=1 -O3 -I /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/utilities -DPOLYBENCH_DUMP_ARRAYS -ffp-contract=off -DFMA_DISABLED=1 -DFP_ABSTOLERANCE=1e-5 -sALLOW_MEMORY_GROWTH=1 -O2

compile_misc_poly_gesummv: Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv
compile_misc_poly_gesummv: Polybench/linear-algebra/blas/gesummv/gesummv.js
compile_misc_poly_gesummv: Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/build.make
.PHONY : compile_misc_poly_gesummv

# Rule to build all files generated by this target.
Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/build: compile_misc_poly_gesummv
.PHONY : Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/build

Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/clean:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/linear-algebra/blas/gesummv && $(CMAKE_COMMAND) -P CMakeFiles/compile_misc_poly_gesummv.dir/cmake_clean.cmake
.PHONY : Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/clean

Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/depend:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Polybench/linear-algebra/blas/gesummv /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/linear-algebra/blas/gesummv /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Polybench/linear-algebra/blas/gesummv/CMakeFiles/compile_misc_poly_gesummv.dir/depend

