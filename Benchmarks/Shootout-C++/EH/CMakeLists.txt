set(SRC_FILES
  ${CMAKE_CURRENT_SOURCE_DIR}/except.cpp
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

foreach(SOURCE ${SRC_FILES})
    # get file name (without path)
    get_filename_component(SOURCE_NAME ${SOURCE} NAME)
    
    # generate the corresponding output file name, 
    # the output file name is the source file name plus the .js suffix

    string(REPLACE ".cpp" ".js" OUTPUT_NAME ${SOURCE_NAME})
    add_custom_command(
        OUTPUT ${OUTPUT_NAME}
        COMMAND em++ ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} ${CXXFLAGS} -sALLOW_MEMORY_GROWTH=1 -O2 -sNO_DISABLE_EXCEPTION_CATCHING
        COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
        VERBATIM # use raw commands
    )

    # add a custom command to compile the source file to the output file

    # add the current generated output file to the output file list of this directory
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# add a custom target that depends on the output files
add_custom_target(compile_shootout_cplusplus_eh ALL DEPENDS ${ALL_OUTPUTS})