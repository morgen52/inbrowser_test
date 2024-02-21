list(APPEND LDFLAGS -lm)

set(SRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/almabench.c
    ${CMAKE_CURRENT_SOURCE_DIR}/huffbench.c
    ${CMAKE_CURRENT_SOURCE_DIR}/fftbench.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/lpbench.c
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

foreach(SOURCE ${SRC_FILES})
    # get file name (without path)
    get_filename_component(SOURCE_NAME ${SOURCE} NAME)
    
    # generate the corresponding output file name, 
    # the output file name is the source file name plus the .js suffix
    if (SOURCE_NAME MATCHES ".*\\.c$")
        string(REPLACE ".c" ".js" OUTPUT_NAME ${SOURCE_NAME})
        add_custom_command(
            OUTPUT ${OUTPUT_NAME}
            COMMAND emcc ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} -sALLOW_MEMORY_GROWTH=1 -O2
            COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
            VERBATIM # use raw commands
        )
    elseif (SOURCE_NAME MATCHES ".*\\.cpp$")
        string(REPLACE ".cpp" ".js" OUTPUT_NAME ${SOURCE_NAME})
        add_custom_command(
            OUTPUT ${OUTPUT_NAME}
            COMMAND em++ ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} -sALLOW_MEMORY_GROWTH=1 -O2
            COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
            VERBATIM # use raw commands
        )
    endif()

    # add a custom command to compile the source file to the output file

    # add the current generated output file to the output file list of this directory
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# add a custom target that depends on the output files
add_custom_target(compile_coyotebench ALL DEPENDS ${ALL_OUTPUTS})


