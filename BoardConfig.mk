#
# Copyright (C) 2016 The CyanogenMod Project
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

#v.20160419start:
#comments with prefix #w  - commented by wladimit_tm
#was - wladimir_tm add start
#wae - wladimir_tm add end
  
# inherit from the proprietary version
#w -include vendor/nubia/nx403a/BoardConfigVendor.mk

#was
LOCAL_PATH := device/nubia/NX403A
USE_CAMERA_STUB := true
#wae

# Flags
#TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp

#was
##CAF:
#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
#wae

TARGET_SPECIFIC_HEADER_PATH := device/nubia/NX403A/include

# Kernel inline build
#w TARGET_KERNEL_SOURCE := kernel/nubia/nx403a
#w TARGET_KERNEL_CONFIG := cm_nubiamini2_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.9

#w # Kernel
#w TARGET_PREBUILT_KERNEL = zImage from NX403A_4.2_to_4.4_recovery_V1 - 6.5 MB (6,468,168 bytes)
#w TARGET_PREBUILT_RECOVERY_KERNEL = zImage from Nubia_Z5Smini_TWRP2.6.30+V3And_pda - 7.4 MB (7,368,496 bytes)
#w TARGET_PREBUILT_KERNEL = zImage from NX403A_CNCommon_V1.26 - boot  - 6.4 MB (6,435,176 bytes)
#was
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/NX403A_4.2_to_4.4_recovery_V1.img-zImage
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/NX403A_CNCommon_V1.26_boot.img-zImage
#TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/recovery/Nubia_Z5Smini_TWRP2.6.30+V3And_pda.recovery.img-zImage
#TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/NX403A_4.2_to_4.4_recovery_V1.img-zImage
TARGET_PREBUILT_RECOVERY_KERNEL := $(LOCAL_PATH)/NX403A_CNCommon_V1.26_boot.img-zImage
#wae

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
#w2 COMMON_GLOBAL_CFLAGS     += -DNO_SECURE_DISCARD

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT       := armv7-a-neon
TARGET_CPU_ABI            := armeabi-v7a
TARGET_CPU_ABI2           := armeabi
TARGET_CPU_SMP            := true
TARGET_CPU_VARIANT        := krait
TARGET_BOARD_PLATFORM     := msm8960

# Krait optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION  := true
TARGET_USE_KRAIT_PLD_SET             := true
TARGET_KRAIT_BIONIC_PLDOFFS          := 10
TARGET_KRAIT_BIONIC_PLDTHRESH        := 10
TARGET_KRAIT_BIONIC_BBTHRESH         := 64
TARGET_KRAIT_BIONIC_PLDSIZE          := 64

#find . -type f | xargs grep TARGET_KRAIT_BIONIC_PLDOFFS
#./bionic/libc/arch-arm/krait/bionic/memcpy_base.S: *   TARGET_KRAIT_BIONIC_PLDOFFS := <pldoffset>
#./bionic/libc/arch-arm/krait/bionic/memcpy_base.S: *   TARGET_KRAIT_BIONIC_PLDSIZE := <pldsize>
#./bionic/libc/arch-arm/krait/bionic/memcpy_base.S: *   TARGET_KRAIT_BIONIC_PLDTHRESH := <pldthreshold>
#./bionic/libc/arch-arm/krait/bionic/memcpy_base.S: *   TARGET_KRAIT_BIONIC_BBTHRESH := <bbthreshold>
#./bionic/libc/arch-arm/krait/bionic/memmove.S: *   TARGET_KRAIT_BIONIC_PLDOFFS := <pldoffset>
#./bionic/libc/arch-arm/krait/bionic/memmove.S: *   TARGET_KRAIT_BIONIC_PLDSIZE := <pldsize>
#./bionic/libc/arch-arm/krait/bionic/memmove.S: *   TARGET_KRAIT_BIONIC_PLDTHRESH := <pldthreshold>

TARGET_USES_LOGD:=false
#./system/core/liblog/
#./system/core/logd
#./bionic/libc/Android.mk:ifneq ($(TARGET_USES_LOGD),false)
#./bionic/libc/Android.mk:libc_common_cflags += -DTARGET_USES_LOGD
#./bootable/recovery/Android.mk:    ifeq ($(TARGET_USES_LOGD), true)
#./bootable/recovery/prebuilt/Android.mk:    ifeq ($(TARGET_USES_LOGD), true)
#./bootable/recovery/etc/Android.mk:    ifeq ($(TARGET_USES_LOGD), true)


BOARD_USES_LEGACY_MMAP := true
#./bionic/libc/Android.mk:ifeq ($(BOARD_USES_LEGACY_MMAP),true)

#w2 EXTENDED_FONT_FOOTPRINT := true
#./build/target/board/generic/BoardConfig.mk:  EXTENDED_FONT_FOOTPRINT := true
#./external/naver-fonts/Android.mk:ifneq ($(EXTENDED_FONT_FOOTPRINT),true)
#./external/naver-fonts/Android.mk:endif  # !EXTENDED_FONT_FOOTPRINT


# Bionic
#w2 MALLOC_IMPL := dlmalloc

# Bootloader
TARGET_NO_BOOTLOADER         := true
TARGET_BOOTLOADER_NAME       := NX403A
TARGET_BOOTLOADER_BOARD_NAME := MSM8960
#w2 TARGET_BOARD_INFO_FILE       := device/nubia/NX403A/board-info.txt

# Others
TARGET_NO_RADIOIMAGE       := true
#w2 BOARD_USES_SECURE_SERVICES := true
#w2 BOARD_LIB_DUMPSTATE        := libdumpstate.nx403a
BOARD_EGL_CFG              := device/nubia/NX403A/configs/egl.cfg

# Kernel 
#w BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=4 androidboot.selinux=disabled androidboot.bootdevice=msm_sdcc.1

#was
#Nubia_Z5Smini_TWRP2.6.30+V3And_pda:
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=4 androidboot.selinux=permissive
#NX403A_4.2_to_4.4_recovery_V1:
#BOARD_KERNEL_CMDLINE:= console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=4


BOARD_KERNEL_BASE     := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x02000000

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM         := true
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 15728640   # 15M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640   # 15M
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1288491008 # 2G
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2362232832 # 2.66G
BOARD_FLASH_BLOCK_SIZE             := 131072

# GPS

#TARGET_HAVE_QC_PERF:=true

# Audio

# Display
TARGET_USES_ION                 := true
USE_OPENGL_RENDERER             := true
TARGET_USES_C2D_COMPOSITION     := true
HAVE_ADRENO_SOURCE              := false
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

#Power HAL
TARGET_POWERHAL_VARIANT := qcom

# Time
BOARD_USES_QC_TIME_SERVICES := true


#TARGET_NO_RECOVERY := true
# Recovery
BOARD_TOUCH_RECOVERY            := true
#w TARGET_RECOVERY_FSTAB           := device/nubia/NX403A/rootdir/fstab.qcom
#w via better use auto acceptance of "recovery.fstab" from root of device tree 
RECOVERY_FSTAB_VERSION          := 2
BOARD_SUPPRESS_SECURE_ERASE     := true
BOARD_HAS_NO_SELECT_BUTTON      := true
BOARD_HAS_LARGE_FILESYSTEM      := true
#w BORAD_REC_LANG_CHINESE          := true
TARGET_RECOVERY_PIXEL_FORMAT    := "RGBX_8888"
#w 
#TARGET_RECOVERY_INITRC          := device/nubia/NX403A/recovery/init.rc
#w
#BOARD_CUSTOM_GRAPHICS           := ../../../device/nubia/nx403a/recovery/graphics.c
#BOARD_USE_CUSTOM_RECOVERY_FONT  := \"fontcn30_18x48.h\"
#w TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

# TWRP Recovery
DEVICE_RESOLUTION                := 720x1280
#RECOVERY_SDCARD_ON_DATA         := true
TW_INTERNAL_STORAGE_PATH         := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT  := "sdcard"
TW_EXTERNAL_STORAGE_PATH         := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT  := "external_sd"
#w TW_NO_REBOOT_BOOTLOADER          := true
#w TW_HAS_DOWNLOAD_MODE             := false
TWRP_EVENT_LOGGING               := false

RECOVERY_GRAPHICS_USE_LINELENGTH := true

#was
BOARD_HAS_DOWNLOAD_MODE 	 := true
##for TERP3.0*
#This TW_THEME flag replaces the older DEVICE_RESOLUTION flag.
#TWRP now uses scaling to stretch any theme to fit the screen resolution.
#There are currently 5 settings which are:
#portrait_hdpi, portrait_mdpi, landscape_hdpi, landscape_mdpi, and watch_mdpi. 
#For portrait, you should probably select the hdpi theme 
#for resolutions of 720x1280 and higher
TW_THEME := portrait_hdpi
TW_DEFAULT_EXTERNAL_STORAGE := true
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#TW_IGNORE_MAJOR_AXIS_0 := true
#TW_SCREEN_BLANK_ON_BOOT := true
#TW_NO_SCREEN_TIMEOUT := true
#RECOVERY_SDCARD_ON_DATA := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#BOARD_SUPPRESS_EMMC_WIPE := true
#TARGET_RECOVERY_QCOM_RTC_FIX := true
#BOARD_HAS_JANKY_BACKBUFFER := true
TARGET_RECOVERY_DEVICE_MODULES += twrp.fstab
#TWRP_EVENT_LOGGING := true


#twrp_bootable_miniui_android.mk_file_from:
#!!!!!!!!!!!!!!!!!!
#TARGET_CUSTOM_KERNEL_HEADERS += $(LOCAL_PATH)/include/linux
# = path to files msm_ion.h and msm_mdp.h
#likes TARGET_SPECIFIC_HEADER_PATH := device/nubia/NX403A/include
#
#TW_BRIGHTNESS_PATH := '/sys/class/leds/lcd-backlight/brightness'
# 
#BOARD_CUSTOM_GRAPHICS
# = path to file graphics.c 
#TW_BOARD_CUSTOM_GRAPHICS
# = the same - but twrp_bootable_miniuitwrp_android.mk_file_from

#
#TW_MAX_BRIGHTNESS := 150
#

#
#TW_TARGET_USES_QCOM_BSP := true
#

TW_INCLUDE_FB2PNG := true

TW_NEW_ION_HEAP := true

#TW_DISABLE_DOUBLE_BUFFERING := true

#TW_NO_USB_STORAGE := true

#BOARD_HAS_NO_REAL_SDCARD := true
# This excludes parted from the build... parted is prebuilt and for arm CPU only

#TW_USE_TOOLBOX := true

#TW_EXCLUDE_MTP := true
#MTP not woking in omni 4.4

#TW_EXCLUDE_SUPERSU := true

#TW_HAS_DOWNLOAD_MODE := true
# - on 44-  reboots into system

#(TW_DISABLE_DOUBLE_BUFFERING), true)

#TW_NEVER_UNMOUNT_SYSTEM := true
# -- not USE - via can not format system
 

#TW_FORCE_CPUINFO_FOR_DEVICE_ID), true
#TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

#TW_EXCLUDE_ENCRYPTED_BACKUPS := true
# for smaller size

#TW_NO_EXFAT : = true
#for smaller size

#TW_SCREEN_BLANK_ON_BOOT := true

#TW_DISABLE_TTF := true
## This excludes file 324.0KiB [######    ]  libft2.so

#####
# Make sure this folder exists so display stuff doesn't fail
#$(shell mkdir -p $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/)
#####
#$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

HAVE_SELINUX := true
#wae

# Don't build qcom camera HAL
#w USE_CAMERA_STUB                      := false
#w USE_DEVICE_SPECIFIC_CAMERA           := true
#w USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY := true

#w2 include device/qcom/sepolicy/sepolicy.mk

# Enable dex-preoptimization to speed up first boot sequence
#w  ifeq ($(HOST_OS),linux)
#w  ifeq ($(TARGET_BUILD_VARIANT),userdebug)
#w    ifeq ($(WITH_DEXPREOPT),)
#w      WITH_DEXPREOPT := true
#w      WITH_DEXPREOPT_COMP := false
#w    endif
#w  endif
#w endif
#WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true

WITH_DEXPREOPT := false
ANDROID_COMMON_BUILD_MK = true
