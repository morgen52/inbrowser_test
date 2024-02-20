set(POLYBENCH_UTILS Polybench/utilities )
list(APPEND CFLAGS -I ${CMAKE_SOURCE_DIR}/${POLYBENCH_UTILS} -DPOLYBENCH_DUMP_ARRAYS)
if(SMALL_PROBLEM_SIZE)
  list(APPEND CFLAGS -DSMALL_DATASET)
endif()
set(HASH_PROGRAM_OUTPUT 1)
add_definitions(-DFP_ABSTOLERANCE=1e-5)


set(SRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/syr2k.c
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

foreach(SOURCE ${SRC_FILES})
    # get file name (without path)
    get_filename_component(SOURCE_NAME ${SOURCE} NAME)
    
    # generate the corresponding output file name, 
    # the output file name is the source file name plus the .js suffix
    if (SOURCE_NAME MATCHES ".*\\.c")
        string(REPLACE ".c" ".js" OUTPUT_NAME ${SOURCE_NAME})
        add_custom_command(
            OUTPUT ${OUTPUT_NAME}
            COMMAND emcc ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} ${CFLAGS} -DFP_ABSTOLERANCE=1e-5
            COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
            VERBATIM # use raw commands
        )
    elseif (SOURCE_NAME MATCHES ".*\\.cpp")
        string(REPLACE ".cpp" ".js" OUTPUT_NAME ${SOURCE_NAME})
        add_custom_command(
            OUTPUT ${OUTPUT_NAME}
            COMMAND em++ ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS}
            COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
            VERBATIM # use raw commands
        )
    endif()

    # add a custom command to compile the source file to the output file

    # add the current generated output file to the output file list of this directory
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# add a custom target that depends on the output files
add_custom_target(compile_misc_poly_syr2k ALL DEPENDS ${ALL_OUTPUTS})



