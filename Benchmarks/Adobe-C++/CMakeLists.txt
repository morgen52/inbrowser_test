list(APPEND LDFLAGS -lm)
set(FP_ABSTOLERANCE 0.01)

set(SRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/simple_types_constant_folding.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/simple_types_loop_invariant.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/stepanov_vector.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/loop_unroll.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/stepanov_abstraction.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/functionobjects.cpp
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

foreach(SOURCE ${SRC_FILES})
    # get *.cpp file name (without path)
    get_filename_component(SOURCE_NAME ${SOURCE} NAME)
    
    # generate the corresponding output file name, 
    # the output file name is the source file name plus the .js suffix
    string(REPLACE ".cpp" ".js" OUTPUT_NAME ${SOURCE_NAME})

    # add a custom command to compile the source file to the output file
    add_custom_command(
        OUTPUT ${OUTPUT_NAME}
        COMMAND em++ ${SOURCE} -o ${OUTPUT_NAME} ${LDFLAGS} -O2
        DEPENDS ${SOURCE}
        COMMENT "Compiling ${SOURCE_NAME} to ${OUTPUT_NAME}"
        VERBATIM # use raw commands
    )

    # 将当前生成的输出文件添加到该目录的输出文件列表中
    set(ALL_OUTPUTS ${ALL_OUTPUTS} ${OUTPUT_NAME})
endforeach()

# 将所有的输出文件作为该目录的输出
add_custom_target(compile_adobe_cpp ALL DEPENDS ${ALL_OUTPUTS})
