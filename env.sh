##############################################################
# Copyright (c) 1986-2023 Xilinx, Inc.  All rights reserved. #
##############################################################

export XILINX_VITIS=/home/jesse/tools/Xilinx/Vitis/2022.2
if [ -n "${PATH}" ]; then
  export PATH=$XILINX_VITIS/bin:$XILINX_VITIS/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:$XILINX_VITIS/gnu/aarch32/lin/gcc-arm-none-eabi/bin:$XILINX_VITIS/tps/lnx64/cmake-3.3.2/bin:$XILINX_VITIS/aietools/bin:$PATH
else
  export PATH=$XILINX_VITIS/bin:$XILINX_VITIS/gnu/microblaze/lin/bin:$XILINX_VITIS/gnu/arm/lin/bin:$XILINX_VITIS/gnu/microblaze/linux_toolchain/lin64_le/bin:$XILINX_VITIS/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin:$XILINX_VITIS/gnu/aarch32/lin/gcc-arm-none-eabi/bin:$XILINX_VITIS/gnu/aarch64/lin/aarch64-linux/bin:$XILINX_VITIS/gnu/aarch64/lin/aarch64-none/bin:$XILINX_VITIS/gnu/armr5/lin/gcc-arm-none-eabi/bin:$XILINX_VITIS/tps/lnx64/cmake-3.3.2/bin:$XILINX_VITIS/aietools/bin
fi
