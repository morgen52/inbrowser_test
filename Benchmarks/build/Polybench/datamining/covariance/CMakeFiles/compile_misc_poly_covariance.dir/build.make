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

# Utility rule file for compile_misc_poly_covariance.

# Include any custom commands dependencies for this target.
include Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/compiler_depend.make

# Include the progress variables for this target.
include Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/progress.make

Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance: Polybench/datamining/covariance/covariance.js

Polybench/datamining/covariance/covariance.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling covariance.c to covariance.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Polybench/datamining/covariance && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Polybench/datamining/covariance/covariance.c -o covariance.js -lm -I /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Polybench/utilities -DPOLYBENCH_DUMP_ARRAYS -ffp-contract=off -DFMA_DISABLED=1

compile_misc_poly_covariance: Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance
compile_misc_poly_covariance: Polybench/datamining/covariance/covariance.js
compile_misc_poly_covariance: Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/build.make
.PHONY : compile_misc_poly_covariance

# Rule to build all files generated by this target.
Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/build: compile_misc_poly_covariance
.PHONY : Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/build

Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/clean:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Polybench/datamining/covariance && $(CMAKE_COMMAND) -P CMakeFiles/compile_misc_poly_covariance.dir/cmake_clean.cmake
.PHONY : Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/clean

Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/depend:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Polybench/datamining/covariance /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Polybench/datamining/covariance /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Polybench/datamining/covariance/CMakeFiles/compile_misc_poly_covariance.dir/depend

