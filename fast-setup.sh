#!/bin/bash

echo "Starting..."
if ( $(command -v riscv64-unknown-linux-gnu-gcc > /dev/null) &&
  $(command -v riscv64-unknown-elf-gcc > /dev/null) )
then
  echo "RISCV tools are already installed"
else
  echo "Downloading Prebuilt RISC-V Toolchain... "

  # The 1.0 version expected libmpfr.so.4, modern Ubuntu has .6
  TOOL_VER=1.0
  if [[ $(ldconfig -p | grep "libmpfr.so.6") ]]; then
      echo "Downloading tools v2.0 (support for libmpfr.so.6)"
      TOOL_VER=2.0
  fi

  export RISCV=$(pwd)/riscv
  export PATH=$PATH:$RISCV/bin
  wget https://github.com/keystone-anonymous/prebuilt-tools/archive/${TOOL_VER}.tar.gz
  tar -xzvf ${TOOL_VER}.tar.gz
  cd prebuilt-tools-${TOOL_VER}
  ./installrelease.sh > riscv-tools-install.log
  mv distrib riscv
  cp -R riscv ../
  cd ..
  echo "Toolchain has been installed in $RISCV"
fi

git config --global submodule.riscv-gnu-toolchain.update none
git submodule update --init --recursive
