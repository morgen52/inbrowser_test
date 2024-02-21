include(CheckSymbolExists)

list(APPEND LDFLAGS -lm )
list(APPEND CFLAGS -Wno-implicit-int)
set(FP_TOLERANCE 0.001)

set(SRC_FILES
    ${CMAKE_CURRENT_SOURCE_DIR}/flops-4.c
    ${CMAKE_CURRENT_SOURCE_DIR}/whetstone.c
    ${CMAKE_CURRENT_SOURCE_DIR}/matmul_f64_4x4.c
    ${CMAKE_CURRENT_SOURCE_DIR}/revertBits.c
    ${CMAKE_CURRENT_SOURCE_DIR}/mandel.c
    ${CMAKE_CURRENT_SOURCE_DIR}/evalloop.c
    ${CMAKE_CURRENT_SOURCE_DIR}/flops-3.c
    ${CMAKE_CURRENT_SOURCE_DIR}/flops.c
    ${CMAKE_CURRENT_SOURCE_DIR}/flops-7.c
    ${CMAKE_CURRENT_SOURCE_DIR}/ReedSolomon.c
    ${CMAKE_CURRENT_SOURCE_DIR}/flops-2.c
    ${CMAKE_CURRENT_SOURCE_DIR}/flops-8.c
    ${CMAKE_CURRENT_SOURCE_DIR}/lowercase.c
    ${CMAKE_CURRENT_SOURCE_DIR}/pi.c
    ${CMAKE_CURRENT_SOURCE_DIR}/mandel-2.c
    ${CMAKE_CURRENT_SOURCE_DIR}/perlin.c
    ${CMAKE_CURRENT_SOURCE_DIR}/flops-6.c
    ${CMAKE_CURRENT_SOURCE_DIR}/ffbench.c
    ${CMAKE_CURRENT_SOURCE_DIR}/himenobmtxpa.c
    ${CMAKE_CURRENT_SOURCE_DIR}/flops-1.c
    ${CMAKE_CURRENT_SOURCE_DIR}/fp-convert.c
    ${CMAKE_CURRENT_SOURCE_DIR}/flops-5.c
    ${CMAKE_CURRENT_SOURCE_DIR}/fbench.c
    ${CMAKE_CURRENT_SOURCE_DIR}/salsa20.c
    ${CMAKE_CURRENT_SOURCE_DIR}/dt.c
    ${CMAKE_CURRENT_SOURCE_DIR}/richards_benchmark.c
    ${CMAKE_CURRENT_SOURCE_DIR}/oourafft.c
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
add_custom_target(compile_misc ALL DEPENDS ${ALL_OUTPUTS})





