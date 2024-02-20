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

# Utility rule file for compile_misc.

# Include any custom commands dependencies for this target.
include Misc/CMakeFiles/compile_misc.dir/compiler_depend.make

# Include the progress variables for this target.
include Misc/CMakeFiles/compile_misc.dir/progress.make

Misc/CMakeFiles/compile_misc: Misc/flops-4.js
Misc/CMakeFiles/compile_misc: Misc/whetstone.js
Misc/CMakeFiles/compile_misc: Misc/matmul_f64_4x4.js
Misc/CMakeFiles/compile_misc: Misc/revertBits.js
Misc/CMakeFiles/compile_misc: Misc/mandel.js
Misc/CMakeFiles/compile_misc: Misc/evalloop.js
Misc/CMakeFiles/compile_misc: Misc/flops-3.js
Misc/CMakeFiles/compile_misc: Misc/flops.js
Misc/CMakeFiles/compile_misc: Misc/flops-7.js
Misc/CMakeFiles/compile_misc: Misc/ReedSolomon.js
Misc/CMakeFiles/compile_misc: Misc/flops-2.js
Misc/CMakeFiles/compile_misc: Misc/flops-8.js
Misc/CMakeFiles/compile_misc: Misc/lowercase.js
Misc/CMakeFiles/compile_misc: Misc/pi.js
Misc/CMakeFiles/compile_misc: Misc/mandel-2.js
Misc/CMakeFiles/compile_misc: Misc/perlin.js
Misc/CMakeFiles/compile_misc: Misc/flops-6.js
Misc/CMakeFiles/compile_misc: Misc/ffbench.js
Misc/CMakeFiles/compile_misc: Misc/himenobmtxpa.js
Misc/CMakeFiles/compile_misc: Misc/flops-1.js
Misc/CMakeFiles/compile_misc: Misc/fp-convert.js
Misc/CMakeFiles/compile_misc: Misc/flops-5.js
Misc/CMakeFiles/compile_misc: Misc/fbench.js
Misc/CMakeFiles/compile_misc: Misc/salsa20.js
Misc/CMakeFiles/compile_misc: Misc/dt.js
Misc/CMakeFiles/compile_misc: Misc/richards_benchmark.js
Misc/CMakeFiles/compile_misc: Misc/oourafft.js

Misc/ReedSolomon.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling ReedSolomon.c to ReedSolomon.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/ReedSolomon.c -o ReedSolomon.js -lm

Misc/dt.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Compiling dt.c to dt.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/dt.c -o dt.js -lm

Misc/evalloop.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Compiling evalloop.c to evalloop.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/evalloop.c -o evalloop.js -lm

Misc/fbench.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Compiling fbench.c to fbench.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/fbench.c -o fbench.js -lm

Misc/ffbench.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Compiling ffbench.c to ffbench.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/ffbench.c -o ffbench.js -lm

Misc/flops-1.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Compiling flops-1.c to flops-1.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops-1.c -o flops-1.js -lm

Misc/flops-2.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Compiling flops-2.c to flops-2.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops-2.c -o flops-2.js -lm

Misc/flops-3.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Compiling flops-3.c to flops-3.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops-3.c -o flops-3.js -lm

Misc/flops-4.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Compiling flops-4.c to flops-4.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops-4.c -o flops-4.js -lm

Misc/flops-5.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Compiling flops-5.c to flops-5.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops-5.c -o flops-5.js -lm

Misc/flops-6.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Compiling flops-6.c to flops-6.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops-6.c -o flops-6.js -lm

Misc/flops-7.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Compiling flops-7.c to flops-7.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops-7.c -o flops-7.js -lm

Misc/flops-8.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Compiling flops-8.c to flops-8.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops-8.c -o flops-8.js -lm

Misc/flops.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Compiling flops.c to flops.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/flops.c -o flops.js -lm

Misc/fp-convert.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Compiling fp-convert.c to fp-convert.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/fp-convert.c -o fp-convert.js -lm

Misc/himenobmtxpa.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Compiling himenobmtxpa.c to himenobmtxpa.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/himenobmtxpa.c -o himenobmtxpa.js -lm

Misc/lowercase.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Compiling lowercase.c to lowercase.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/lowercase.c -o lowercase.js -lm

Misc/mandel-2.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Compiling mandel-2.c to mandel-2.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/mandel-2.c -o mandel-2.js -lm

Misc/mandel.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Compiling mandel.c to mandel.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/mandel.c -o mandel.js -lm

Misc/matmul_f64_4x4.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Compiling matmul_f64_4x4.c to matmul_f64_4x4.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/matmul_f64_4x4.c -o matmul_f64_4x4.js -lm

Misc/oourafft.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Compiling oourafft.c to oourafft.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/oourafft.c -o oourafft.js -lm

Misc/perlin.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Compiling perlin.c to perlin.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/perlin.c -o perlin.js -lm

Misc/pi.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Compiling pi.c to pi.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/pi.c -o pi.js -lm

Misc/revertBits.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Compiling revertBits.c to revertBits.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/revertBits.c -o revertBits.js -lm

Misc/richards_benchmark.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_25) "Compiling richards_benchmark.c to richards_benchmark.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/richards_benchmark.c -o richards_benchmark.js -lm

Misc/salsa20.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_26) "Compiling salsa20.c to salsa20.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/salsa20.c -o salsa20.js -lm

Misc/whetstone.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_27) "Compiling whetstone.c to whetstone.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && emcc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc/whetstone.c -o whetstone.js -lm

compile_misc: Misc/CMakeFiles/compile_misc
compile_misc: Misc/ReedSolomon.js
compile_misc: Misc/dt.js
compile_misc: Misc/evalloop.js
compile_misc: Misc/fbench.js
compile_misc: Misc/ffbench.js
compile_misc: Misc/flops-1.js
compile_misc: Misc/flops-2.js
compile_misc: Misc/flops-3.js
compile_misc: Misc/flops-4.js
compile_misc: Misc/flops-5.js
compile_misc: Misc/flops-6.js
compile_misc: Misc/flops-7.js
compile_misc: Misc/flops-8.js
compile_misc: Misc/flops.js
compile_misc: Misc/fp-convert.js
compile_misc: Misc/himenobmtxpa.js
compile_misc: Misc/lowercase.js
compile_misc: Misc/mandel-2.js
compile_misc: Misc/mandel.js
compile_misc: Misc/matmul_f64_4x4.js
compile_misc: Misc/oourafft.js
compile_misc: Misc/perlin.js
compile_misc: Misc/pi.js
compile_misc: Misc/revertBits.js
compile_misc: Misc/richards_benchmark.js
compile_misc: Misc/salsa20.js
compile_misc: Misc/whetstone.js
compile_misc: Misc/CMakeFiles/compile_misc.dir/build.make
.PHONY : compile_misc

# Rule to build all files generated by this target.
Misc/CMakeFiles/compile_misc.dir/build: compile_misc
.PHONY : Misc/CMakeFiles/compile_misc.dir/build

Misc/CMakeFiles/compile_misc.dir/clean:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc && $(CMAKE_COMMAND) -P CMakeFiles/compile_misc.dir/cmake_clean.cmake
.PHONY : Misc/CMakeFiles/compile_misc.dir/clean

Misc/CMakeFiles/compile_misc.dir/depend:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc/CMakeFiles/compile_misc.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Misc/CMakeFiles/compile_misc.dir/depend
