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

# Utility rule file for compile_shootout_cplusplus_eh.

# Include any custom commands dependencies for this target.
include Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/compiler_depend.make

# Include the progress variables for this target.
include Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/progress.make

Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh: Shootout-C++/EH/except.js

Shootout-C++/EH/except.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling except.cpp to except.js"
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Shootout-C++/EH && em++ /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Shootout-C++/EH/except.cpp -o except.js

compile_shootout_cplusplus_eh: Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh
compile_shootout_cplusplus_eh: Shootout-C++/EH/except.js
compile_shootout_cplusplus_eh: Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/build.make
.PHONY : compile_shootout_cplusplus_eh

# Rule to build all files generated by this target.
Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/build: compile_shootout_cplusplus_eh
.PHONY : Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/build

Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/clean:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Shootout-C++/EH && $(CMAKE_COMMAND) -P CMakeFiles/compile_shootout_cplusplus_eh.dir/cmake_clean.cmake
.PHONY : Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/clean

Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/depend:
	cd /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/Shootout-C++/EH /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Shootout-C++/EH /Users/morgen/Desktop/In-browser_Wasm_Testing/Benchmarks/build/Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Shootout-C++/EH/CMakeFiles/compile_shootout_cplusplus_eh.dir/depend

