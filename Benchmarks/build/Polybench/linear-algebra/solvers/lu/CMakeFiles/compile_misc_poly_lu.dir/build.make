# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build

# Utility rule file for compile_misc_poly_lu.

# Include any custom commands dependencies for this target.
include Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/compiler_depend.make

# Include the progress variables for this target.
include Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/progress.make

Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu: Polybench/linear-algebra/solvers/lu/lu.js

Polybench/linear-algebra/solvers/lu/lu.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling lu.c to lu.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Polybench/linear-algebra/solvers/lu && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Polybench/linear-algebra/solvers/lu/lu.c -o lu.js -lm -I /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Polybench/utilities -DPOLYBENCH_DUMP_ARRAYS -DFP_ABSTOLERANCE=1e-5

compile_misc_poly_lu: Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu
compile_misc_poly_lu: Polybench/linear-algebra/solvers/lu/lu.js
compile_misc_poly_lu: Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/build.make
.PHONY : compile_misc_poly_lu

# Rule to build all files generated by this target.
Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/build: compile_misc_poly_lu
.PHONY : Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/build

Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/clean:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Polybench/linear-algebra/solvers/lu && $(CMAKE_COMMAND) -P CMakeFiles/compile_misc_poly_lu.dir/cmake_clean.cmake
.PHONY : Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/clean

Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/depend:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Polybench/linear-algebra/solvers/lu /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Polybench/linear-algebra/solvers/lu /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Polybench/linear-algebra/solvers/lu/CMakeFiles/compile_misc_poly_lu.dir/depend

