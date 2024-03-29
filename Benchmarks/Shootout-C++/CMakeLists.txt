add_subdirectory(EH)

list(APPEND CXXFLAGS -Wno-deprecated)
set(FP_TOLERANCE 0.00000001)

list(APPEND LDFLAGS -lm)

set(SRC_FILES
#   ${CMAKE_CURRENT_SOURCE_DIR}/spellcheck.cpp              # need input
#   ${CMAKE_CURRENT_SOURCE_DIR}/wc.cpp                      # need input
#   ${CMAKE_CURRENT_SOURCE_DIR}/reversefile.cpp             # need input
  ${CMAKE_CURRENT_SOURCE_DIR}/random.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/lists1.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/sieve.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/ary2.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/ary3.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/hash2.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/heapsort.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/strcat.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/ackermann.cpp             # call stack overflow, -O2 can fix it
  ${CMAKE_CURRENT_SOURCE_DIR}/hello.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/lists.cpp
#   ${CMAKE_CURRENT_SOURCE_DIR}/wordfreq.cpp              # need input
  ${CMAKE_CURRENT_SOURCE_DIR}/moments.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/fibo.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/objinst.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/matrix.cpp
  # ${CMAKE_CURRENT_SOURCE_DIR}/sumcol.cpp                # need input
  ${CMAKE_CURRENT_SOURCE_DIR}/methcall.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/nestedloop.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/hash.cpp
  ${CMAKE_CURRENT_SOURCE_DIR}/ary.cpp
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
        COMMAND em++ ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} ${CXXFLAGS} -sALLOW_MEMORY_GROWTH=1 -O2
        COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
        VERBATIM # use raw commands
    )

    # add a custom command to compile the source file to the output file

    # add the current generated output file to the output file list of this directory
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# add a custom target that depends on the output files
add_custom_target(compile_shootout_cplusplus ALL DEPENDS ${ALL_OUTPUTS})