# Copyright (C) 2014 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Model Ids
# 0PJA10000 - HTC Europe
# 0PJA11000 - AT&T
# 0PJA20000 - Sprint
# 0PJA30000 - Verizon

BOARD_VENDOR := htc

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8994
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8994
TARGET_BOARD_PLATFORM_GPU := qcom-adreno430

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 earlyprintk=msm_hsl_uart,0xf991e000 androidboot.hardware=htc_hima androidusb.pid=0x065d androidkey.dummy=1 androidtouch.htc_event=1 disk_mode_enable=1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00078000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01f88000 --tags_offset 0x01d88000 --dt device/htc/hima/recovery/dt.img

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 65536000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 65536000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4587520000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24641536000
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_USERIMAGES_USE_EXT4 := true

# Recovery
#BOARD_CUSTOM_BOOTIMG_MK := device/htc/hima/recovery/mkbootimg.mk
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USES_MMCUTILS := true
TARGET_PREBUILT_KERNEL := device/htc/hima/recovery/kernel
TARGET_RECOVERY_INITRC := device/htc/hima/recovery/etc/init.rc
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP Build Flags
#BOARD_RECOVERY_BLDRMSG_OFFSET := 2048
TW_THEME := portrait_hdpi
#TW_INCLUDE_DUMLOCK := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_EXCLUDE_MTP := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc.0/f9200000.ssusb/f9200000.dwc3/gadget/lun%d/file

# Vendor Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_hima
TARGET_LIBINIT_DEFINES_FILE := device/htc/hima/init/init_hima.c
