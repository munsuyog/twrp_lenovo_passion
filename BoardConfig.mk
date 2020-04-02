#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/lenovo/passion
ALLOW_MISSING_DEPENDENCIES := true

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

# Platform
TARGET_BOARD_PLATFORM := msm8916
QCOM_BOARD_PLATFORMS := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405
TARGET_BOARD_SUFFIX := _64

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53


ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Encryption
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_LEGACY_HW_DISK_ENCRYPTION := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Kernel
BOARD_DTBTOOL_ARGS := -2
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE += \
	sched_enable_hmp=1 \
	console=null \
	androidboot.console=tty60 \
	androidboot.hardware=qcom \
	msm_rtb.filter=0x237 \
	ehci-hcd.park=3 \
	androidboot.bootdevice=7824900.sdhci \
	lpm_levels.sleep_disabled=1 \
	earlyprintk \
	androidboot.emmc=true \
	androidboot.hwid=TBD \
	androidboot.selinux=permissive

BOARD_KERNEL_PAGESIZE := 2048
#BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --tags_offset 0x00000100
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
TARGET_KERNEL_SOURCE := kernel/lenovo/passion
TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := passion_defconfig
#BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27376204800
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
#TARGET_COPY_OUT_VENDOR := vendor

# SELinux
#BOARD_SEPOLICY_DIRS := $(DEVICE_PATH)/sepolicy
#include device/qcom/sepolicy-legacy/sepolicy.mk


# TWRP Configuration
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
#TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SBIN_VOLD := qseecomd hwservicemanager keymaster-3-0
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/twrp.fstab
RECOVERY_SDCARD_ON_DATA := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true

#Test
TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true 

#Log
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Disable twrp app prompt
TW_EXCLUDE_TWRPAPP := true

