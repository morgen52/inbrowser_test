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

# Utility rule file for compile_misc_cplusplus.

# Include any custom commands dependencies for this target.
include Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/compiler_depend.make

# Include the progress variables for this target.
include Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/progress.make

Misc-C++/CMakeFiles/compile_misc_cplusplus: Misc-C++/mandel-text.js
Misc-C++/CMakeFiles/compile_misc_cplusplus: Misc-C++/stepanov_container.js
Misc-C++/CMakeFiles/compile_misc_cplusplus: Misc-C++/stepanov_v1p2.js
Misc-C++/CMakeFiles/compile_misc_cplusplus: Misc-C++/bigfib.js
Misc-C++/CMakeFiles/compile_misc_cplusplus: Misc-C++/oopack_v1p8.js

Misc-C++/bigfib.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling bigfib.cpp to bigfib.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc-C++ && em++ /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc-C++/bigfib.cpp -o bigfib.js -lm

Misc-C++/mandel-text.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Compiling mandel-text.cpp to mandel-text.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc-C++ && em++ /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc-C++/mandel-text.cpp -o mandel-text.js -lm

Misc-C++/oopack_v1p8.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Compiling oopack_v1p8.cpp to oopack_v1p8.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc-C++ && em++ /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc-C++/oopack_v1p8.cpp -o oopack_v1p8.js -lm

Misc-C++/stepanov_container.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Compiling stepanov_container.cpp to stepanov_container.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc-C++ && em++ /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc-C++/stepanov_container.cpp -o stepanov_container.js -lm

Misc-C++/stepanov_v1p2.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Compiling stepanov_v1p2.cpp to stepanov_v1p2.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc-C++ && em++ /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc-C++/stepanov_v1p2.cpp -o stepanov_v1p2.js -lm

compile_misc_cplusplus: Misc-C++/CMakeFiles/compile_misc_cplusplus
compile_misc_cplusplus: Misc-C++/bigfib.js
compile_misc_cplusplus: Misc-C++/mandel-text.js
compile_misc_cplusplus: Misc-C++/oopack_v1p8.js
compile_misc_cplusplus: Misc-C++/stepanov_container.js
compile_misc_cplusplus: Misc-C++/stepanov_v1p2.js
compile_misc_cplusplus: Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/build.make
.PHONY : compile_misc_cplusplus

# Rule to build all files generated by this target.
Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/build: compile_misc_cplusplus
.PHONY : Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/build

Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/clean:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc-C++ && $(CMAKE_COMMAND) -P CMakeFiles/compile_misc_cplusplus.dir/cmake_clean.cmake
.PHONY : Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/clean

Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/depend:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Misc-C++ /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc-C++ /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Misc-C++/CMakeFiles/compile_misc_cplusplus.dir/depend
