cmake_minimum_required(VERSION 3.13.4)

project(test-suite C CXX)

function(append value)
  foreach(variable ${ARGN})
    set(${variable} "${${variable}} ${value}" PARENT_SCOPE)
  endforeach(variable)
endfunction()

# The test-suite is designed to be built in release mode anyway and
set(CMAKE_BUILD_TYPE "Release" CACHE STRING "" FORCE)

add_definitions(-DNDEBUG)

# Add path for custom modules
set(CMAKE_MODULE_PATH
  ${CMAKE_MODULE_PATH}
  "${CMAKE_CURRENT_SOURCE_DIR}/cmake"
  "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules"
  )

get_filename_component(CMAKE_C_COMPILER_DIRECTORY ${CMAKE_C_COMPILER} DIRECTORY)

# use emcc/em++ to compile C/C++ code to WebAssembly
set(CMAKE_C_COMPILER "emcc")
set(CMAKE_CXX_COMPILER "em++")

add_subdirectory(Adobe-C++)
add_subdirectory(BenchmarkGame)
add_subdirectory(CoyoteBench)
add_subdirectory(Dhrystone)
add_subdirectory(Linpack)
add_subdirectory(McGill)
add_subdirectory(Misc)
add_subdirectory(Misc-C++)
# add_subdirectory(Misc-C++-EH)
add_subdirectory(Polybench)
add_subdirectory(Shootout)
add_subdirectory(Shootout-C++)
add_subdirectory(SmallPT)
add_subdirectory(Stanford)
