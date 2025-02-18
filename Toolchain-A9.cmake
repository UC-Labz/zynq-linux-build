
# find the appropriate compiler
find_program( CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++ )
if( NOT CMAKE_CXX_COMPILER )
    message ( FATAL_ERROR "********** Zynq A9 C++ Compiler Not Found! **********" )
endif()
find_program( CMAKE_C_COMPILER   arm-linux-gnueabihf-gcc )
if( NOT CMAKE_C_COMPILER )
    message ( FATAL_ERROR "********** Zynq A9 C Compiler Not Found! **********" )
endif()

set( CMAKE_CROSSCOMPILING TRUE )
set( CMAKE_SYSTEM_NAME Generic )
set( CMAKE_SYSTEM_PROCESSOR arm )
set( TARGET arm-linux-gnueabihf )

set( CMAKE_C_COMPILER_TARGET ${TARGET} )
set( CMAKE_C_COMPILER ${TARGET}-gcc )
set( CMAKE_CXX_COMPILER_TARGET ${TARGET} )
set( CMAKE_CXX_COMPILER ${TARGET}-g++ )
set( CMAKE_ASM_COMPILER_TARGET ${TARGET} )
set( CMAKE_ASM_COMPILER ${TARGET}-gcc )
set( CMAKE_C_COMPILER_WORKS TRUE )
set( CMAKE_ASM_COMPILER_WORKS TRUE )
set( CMAKE_CXX_COMPILER_WORKS TRUE )
set( CMAKE_FIND_LIBRARY_PREFIXES lib )
set( CMAKE_FIND_LIBRARY_SUFFIXES .a )
set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )
set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY )
#add_compile_options( -march=armv8-a+simd )
