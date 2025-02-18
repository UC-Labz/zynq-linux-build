# /**
# --------------------------------------------------------------------------------
# UNCLASSIFIED - UNLIMITED RIGHTS
# --------------------------------------------------------------------------------
#
# Copyright 2023 Raytheon Company.
#
# This software was developed pursuant to Contract Number W31P4Q-19-C-0038 with
# the U.S. government.  The U.S. government's rights in and to this copyrighted
# software are specified in DFARS 252.227-7014, which was made part of the
# above contract.
#
# Distribution Statement F. Further distribution only as directed by
# PEO, Missiles & Space, Close Combat Weapon Systems Project Office,
# ATTN: SFAE-MSL-CWE, Redstone Arsenal, AL 35898, or higher authority;
# 14 Feb 17.
#
# WARNING - This document contains technical data whose export is restricted by
#           the Arms Export Control Act (Title 22, U.S.C., Sec 2751, et seq.) or
#           the Export Administration Act of 1979 (Title 50, U.S.C., App. 2401 et
#           seq.), as amended. Violations of these export laws are subject to
#           severe criminal penalties. Disseminate in accordance with provisions
#           of DoD Directive 5230.25.
# --------------------------------------------------------------------------------
#  */

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
