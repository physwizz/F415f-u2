#!/bin/bash

make clean && make mrproper
export ARCH=arm64
export PLATFORM_VERSION=12
export ANDROID_MAJOR_VERSION=s


make ARCH=arm64 CONFIG_SECTION_MISMATCH_WARN_ONLY=y physwizz_defconfig
make ARCH=arm64 CONFIG_SECTION_MISMATCH_WARN_ONLY=y -j16
