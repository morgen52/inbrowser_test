list(APPEND LDFLAGS -lm )
set(FP_TOLERANCE 0.001)

set(SRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/queens.c              # some strange bugs, -O2 can fix it
    ${CMAKE_CURRENT_SOURCE_DIR}/misr.c
    ${CMAKE_CURRENT_SOURCE_DIR}/chomp.c                # call stack overflow, -O2 can fix it
    # ${CMAKE_CURRENT_SOURCE_DIR}/exptree.c              # need input
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
        COMMAND emcc ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} -O2
        COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
        VERBATIM # use raw commands
    )

    # add a custom command to compile the source file to the output file

    # add the current generated output file to the output file list of this directory
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# add a custom target that depends on the output files
add_custom_target(compile_mcgill ALL DEPENDS ${ALL_OUTPUTS})




