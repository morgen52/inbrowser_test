add_subdirectory(Large)

list(APPEND LDFLAGS -lm)

set(SRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/spectral-norm.c
    ${CMAKE_CURRENT_SOURCE_DIR}/fannkuch.c
    ${CMAKE_CURRENT_SOURCE_DIR}/puzzle.c
    ${CMAKE_CURRENT_SOURCE_DIR}/recursive.c
    ${CMAKE_CURRENT_SOURCE_DIR}/nsieve-bits.c
    ${CMAKE_CURRENT_SOURCE_DIR}/partialsums.c
    ${CMAKE_CURRENT_SOURCE_DIR}/n-body.c
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

foreach(SOURCE ${SRC_FILES})
    # get *.cpp file name (without path)
    get_filename_component(SOURCE_NAME ${SOURCE} NAME)
    
    # generate the corresponding output file name, 
    # the output file name is the source file name plus the .js suffix
    string(REPLACE ".c" ".js" OUTPUT_NAME ${SOURCE_NAME})

    # add a custom command to compile the source file to the output file
    add_custom_command(
        OUTPUT ${OUTPUT_NAME}
        COMMAND emcc ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS}
        COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
        VERBATIM # use raw commands
    )

    # add the current generated output file to the output file list of this directory
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# add a custom target that depends on the output files
add_custom_target(compile_benchmarkgame ALL DEPENDS ${ALL_OUTPUTS})

