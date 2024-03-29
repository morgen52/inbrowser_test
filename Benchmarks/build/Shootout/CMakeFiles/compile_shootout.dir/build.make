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

# Utility rule file for compile_shootout.

# Include any custom commands dependencies for this target.
include Shootout/CMakeFiles/compile_shootout.dir/compiler_depend.make

# Include the progress variables for this target.
include Shootout/CMakeFiles/compile_shootout.dir/progress.make

Shootout/CMakeFiles/compile_shootout: Shootout/nestedloop.js
Shootout/CMakeFiles/compile_shootout: Shootout/hello.js
Shootout/CMakeFiles/compile_shootout: Shootout/sieve.js
Shootout/CMakeFiles/compile_shootout: Shootout/strcat.js
Shootout/CMakeFiles/compile_shootout: Shootout/ary3.js
Shootout/CMakeFiles/compile_shootout: Shootout/methcall.js
Shootout/CMakeFiles/compile_shootout: Shootout/random.js
Shootout/CMakeFiles/compile_shootout: Shootout/hash.js
Shootout/CMakeFiles/compile_shootout: Shootout/objinst.js
Shootout/CMakeFiles/compile_shootout: Shootout/ackermann.js
Shootout/CMakeFiles/compile_shootout: Shootout/heapsort.js
Shootout/CMakeFiles/compile_shootout: Shootout/fib2.js
Shootout/CMakeFiles/compile_shootout: Shootout/matrix.js
Shootout/CMakeFiles/compile_shootout: Shootout/lists.js

Shootout/ackermann.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling ackermann.c to ackermann.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/ackermann.c -o ackermann.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/ary3.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Compiling ary3.c to ary3.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/ary3.c -o ary3.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/fib2.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Compiling fib2.c to fib2.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/fib2.c -o fib2.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/hash.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Compiling hash.c to hash.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/hash.c -o hash.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/heapsort.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Compiling heapsort.c to heapsort.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/heapsort.c -o heapsort.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/hello.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Compiling hello.c to hello.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/hello.c -o hello.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/lists.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Compiling lists.c to lists.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/lists.c -o lists.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/matrix.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Compiling matrix.c to matrix.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/matrix.c -o matrix.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/methcall.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Compiling methcall.c to methcall.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/methcall.c -o methcall.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/nestedloop.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Compiling nestedloop.c to nestedloop.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/nestedloop.c -o nestedloop.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/objinst.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Compiling objinst.c to objinst.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/objinst.c -o objinst.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/random.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Compiling random.c to random.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/random.c -o random.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/sieve.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Compiling sieve.c to sieve.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/sieve.c -o sieve.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

Shootout/strcat.js:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Compiling strcat.c to strcat.js"
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && emcc /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout/strcat.c -o strcat.js -lm -sALLOW_MEMORY_GROWTH=1 -O2

compile_shootout: Shootout/CMakeFiles/compile_shootout
compile_shootout: Shootout/ackermann.js
compile_shootout: Shootout/ary3.js
compile_shootout: Shootout/fib2.js
compile_shootout: Shootout/hash.js
compile_shootout: Shootout/heapsort.js
compile_shootout: Shootout/hello.js
compile_shootout: Shootout/lists.js
compile_shootout: Shootout/matrix.js
compile_shootout: Shootout/methcall.js
compile_shootout: Shootout/nestedloop.js
compile_shootout: Shootout/objinst.js
compile_shootout: Shootout/random.js
compile_shootout: Shootout/sieve.js
compile_shootout: Shootout/strcat.js
compile_shootout: Shootout/CMakeFiles/compile_shootout.dir/build.make
.PHONY : compile_shootout

# Rule to build all files generated by this target.
Shootout/CMakeFiles/compile_shootout.dir/build: compile_shootout
.PHONY : Shootout/CMakeFiles/compile_shootout.dir/build

Shootout/CMakeFiles/compile_shootout.dir/clean:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout && $(CMAKE_COMMAND) -P CMakeFiles/compile_shootout.dir/cmake_clean.cmake
.PHONY : Shootout/CMakeFiles/compile_shootout.dir/clean

Shootout/CMakeFiles/compile_shootout.dir/depend:
	cd /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/Shootout /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout /home/data1/webassembly/inbrowser_testing/inbrowser_test/Benchmarks/build/Shootout/CMakeFiles/compile_shootout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Shootout/CMakeFiles/compile_shootout.dir/depend

