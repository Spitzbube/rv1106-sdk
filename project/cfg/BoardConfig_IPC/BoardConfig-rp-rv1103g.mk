#!/bin/bash

# Target arch
export RK_ARCH=arm

# Target CHIP
export RK_CHIP=rv1106

# Target Toolchain Cross Compile
export RK_TOOLCHAIN_CROSS=arm-rockchip830-linux-uclibcgnueabihf

# Target boot medium: emmc/spi_nor/spi_nand
export RK_BOOT_MEDIUM=spi_nand

# Uboot defconfig
export RK_UBOOT_DEFCONFIG=rv1106_defconfig

# Uboot defconfig fragment
export RK_UBOOT_DEFCONFIG_FRAGMENT=rk-sfc.config

# Kernel defconfig
export RK_KERNEL_DEFCONFIG=rv1106_defconfig

# Kernel defconfig fragment
export RK_KERNEL_DEFCONFIG_FRAGMENT=rv1106-evb.config

# Kernel dts
export RK_KERNEL_DTS=rp-rv1103g.dts

# Config sensor IQ files
# RK_CAMERA_SENSOR_IQFILES format:
#     "iqfile1 iqfile2 iqfile3 ..."
# ./build.sh media and copy <SDK root dir>/output/out/media_out/isp_iqfiles/$RK_CAMERA_SENSOR_IQFILES
export RK_CAMERA_SENSOR_IQFILES="gc2093_SIDA209300461_60IRC_F20.json"

# Config sensor lens CAC calibrattion bin files
export RK_CAMERA_SENSOR_CAC_BIN="gc2093_SIDA209300461_60IRC_F20.bin"

# Config CMA size in environment
export RK_BOOTARGS_CMA_SIZE="24M"

# config partition in environment
# RK_PARTITION_CMD_IN_ENV format:
#     <partdef>[,<partdef>]
#       <partdef> := <size>[@<offset>](part-name)
# Note:
#   If the first partition offset is not 0x0, it must be added. Otherwise, it needn't adding.
export RK_PARTITION_CMD_IN_ENV="256K(env),256K@256K(idblock),256K(uboot),4M(boot),48M(rootfs),-(userdata)"

# config partition's filesystem type (squashfs is readonly)
# emmc:    squashfs/ext4
# nand:    squashfs/ubifs
# spi nor: squashfs/jffs2
# RK_PARTITION_FS_TYPE_CFG format:
#     AAAA:/BBBB/CCCC@ext4
#         AAAA ----------> partition name
#         /BBBB/CCCC ----> partition mount point
#         ext4 ----------> partition filesystem type
export RK_PARTITION_FS_TYPE_CFG=rootfs@IGNORE@ubifs,userdata@/userdata@ubifs

# config filesystem compress (Just for squashfs or ubifs)
# squashfs: lz4/lzo/lzma/xz/gzip, default xz
# ubifs:    lzo/zlib, default lzo
export RK_SQUASHFS_COMP=lzo

# app config
export RK_APP_TYPE=RKIPC_RV1103

# build ipc web backend
export RK_APP_IPCWEB_BACKEND=y

# disable build gdb
export RK_ENABLE_GDB=n

# disable build adb
export RK_ENABLE_ADBD=y

# enable rockchip test
export RK_ENABLE_ROCKCHIP_TEST=y

export RK_PRE_BUILD_OEM_SCRIPT=rv1103-spi_nor-post.sh

export RK_ENABLE_SAMPLE=y

# enable build wifi
export RK_ENABLE_WIFI=y
export RK_ENABLE_WIFI_CHIP=AP6XXX
