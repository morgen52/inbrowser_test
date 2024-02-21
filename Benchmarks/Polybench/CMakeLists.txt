list(APPEND LDFLAGS -lm)
list(APPEND LDFLAGS -sALLOW_MEMORY_GROWTH=1)
# message(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/utilities)

add_subdirectory(datamining)
add_subdirectory(linear-algebra)
add_subdirectory(medley)
add_subdirectory(stencils)
