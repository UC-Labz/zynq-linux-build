cmake_minimum_required( VERSION 3.25 )
project( Zynq-Linux )

include( FetchContent )

FetchContent_Declare(
  linux-xlnx
  GIT_REPOSITORY https://github.com/Xilinx/linux-xlnx.git
  GIT_TAG        xilinx-v2022.2 )

FetchContent_MakeAvailable( linux-xlnx )

include( ExternalProject )

ExternalProject_Add(
  linux_kernel
  SOURCE_DIR ${FETCHCONTENT_BASE_DIR}/linux-xlnx-src
  BINARY_DIR ${CMAKE_BINARY_DIR}/linux-xlnx-build
  CONFIGURE_COMMAND make -C ${FETCHCONTENT_BASE_DIR}/linux-xlnx-src xilinx_zynq_defconfig
  BUILD_COMMAND make -C ${FETCHCONTENT_BASE_DIR}/linux-xlnx-src -j12
  INSTALL_COMMAND ""
  TEST_COMMAND "" )

