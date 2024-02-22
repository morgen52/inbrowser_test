set(POLYBENCH_UTILS Polybench/utilities )
list(APPEND CFLAGS -I ${CMAKE_SOURCE_DIR}/${POLYBENCH_UTILS} -DPOLYBENCH_DUMP_ARRAYS)
if(SMALL_PROBLEM_SIZE)
  list(APPEND CFLAGS -DSMALL_DATASET)
endif()
set(HASH_PROGRAM_OUTPUT 1)
add_definitions(-DFP_ABSTOLERANCE=1e-5)

set(SRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/gemm.c
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

foreach(SOURCE ${SRC_FILES})
    # get file name (without path)
    get_filename_component(SOURCE_NAME ${SOURCE} NAME)
    
    # generate the corresponding output file name, 
    # the output file name is the source file name plus the .js suffix
    string(REPLACE ".c" ".js" OUTPUT_NAME ${SOURCE_NAME})
    add_custom_command(
        OUTPUT ${OUTPUT_NAME}
        COMMAND emcc ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} ${CFLAGS} ${DEFINITIONS} -DFP_ABSTOLERANCE=1e-5 -sALLOW_MEMORY_GROWTH=1 -O2
        COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
        VERBATIM # use raw commands
    )
    

    # add a custom command to compile the source file to the output file

    # add the current generated output file to the output file list of this directory
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# add a custom target that depends on the output files
add_custom_target(compile_misc_poly_gemm ALL DEPENDS ${ALL_OUTPUTS})
