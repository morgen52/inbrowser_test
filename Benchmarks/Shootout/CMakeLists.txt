list(APPEND LDFLAGS -lm)

set(SRC_FILES
  ${CMAKE_CURRENT_SOURCE_DIR}/nestedloop.c
  ${CMAKE_CURRENT_SOURCE_DIR}/hello.c
  ${CMAKE_CURRENT_SOURCE_DIR}/sieve.c
  ${CMAKE_CURRENT_SOURCE_DIR}/strcat.c
  ${CMAKE_CURRENT_SOURCE_DIR}/ary3.c
  ${CMAKE_CURRENT_SOURCE_DIR}/methcall.c
  ${CMAKE_CURRENT_SOURCE_DIR}/random.c
  ${CMAKE_CURRENT_SOURCE_DIR}/hash.c
  ${CMAKE_CURRENT_SOURCE_DIR}/objinst.c
  ${CMAKE_CURRENT_SOURCE_DIR}/ackermann.c
  ${CMAKE_CURRENT_SOURCE_DIR}/heapsort.c
  ${CMAKE_CURRENT_SOURCE_DIR}/fib2.c
  ${CMAKE_CURRENT_SOURCE_DIR}/matrix.c
  ${CMAKE_CURRENT_SOURCE_DIR}/lists.c
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
        COMMAND emcc ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} ${CFLAGS} -sALLOW_MEMORY_GROWTH=1 -O2
        COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
        VERBATIM # use raw commands
    )
    

    # add a custom command to compile the source file to the output file

    # add the current generated output file to the output file list of this directory
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# add a custom target that depends on the output files
add_custom_target(compile_shootout ALL DEPENDS ${ALL_OUTPUTS})







