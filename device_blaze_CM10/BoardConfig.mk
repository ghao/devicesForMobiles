#
# Copyright (C) 2011 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# These two variables are set first, so they can be overridden
# by BoardConfigVendor.mk

# bpok in 2013,add all possible settings
# Audio
BOARD_USES_GENERIC_AUDIO := false

#Camera
USE_CAMERA_STUB := true
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DOMAP_ENHANCEMENT_BURST_CAPTURE

# inherit from the proprietary version
-include vendor/ghao/blaze/BoardConfigVendor.mk
# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX540_120
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := blaze
ARCH_ARM_HAVE_TLS_REGISTER := true

#Kernel/Ramdisk
BOARD_KERNEL_CMDLINE := console=ttyO2,115200n8 mem=1G vmalloc=768M mem=456M@0x80000000 mem=512M@0xA0000000 init=/init vram=32M omapfb.vram=0:16M androidboot.console=ttyO2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/ghao/blaze/kernel
TARGET_PROVIDES_INIT_TARGET_RC := true
#Kernel/Ramdisk
BOARD_EGL_CFG := device/ghao/blaze/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_USES_SECURE_SERVICES := true
# Lights
TARGET_PROVIDES_LIBLIGHTS := true

#Set 32 byte cache line to true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true

# ril
TARGET_PROVIDES_LIBRIL := vendor/ghao/blaze/proprietary/lib/libxgold-ril.so
#webkit
ENABLE_WEBGL := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"






# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072
# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_WLAN_DEVICE                := wl12xx_mac80211

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

#bt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
