#
# Copyright (C) 2014 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

#w $(call inherit-product, vendor/nubia/nx403a/nx403a-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/nubia/NX403A/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

LOCAL_PATH := device/nubia/NX403A

# Snd_soc_msm

# Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/egl.cfg:system/etc/egl.cfg

# WIFI

# Thermald
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/thermald/thermald.conf:system/etc/thermald-8064.conf

# These are the hardware-specific features

# Specific keys

# GPS Location

# TWRP fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/twrp.fstab:recovery/root/etc/twrp.fstab
#    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab \


# RAMDISK
PRODUCT_PACKAGES += fstab.qcom

# Poweroff charger
PRODUCT_PACKAGES += \
    charger_res_images

# Audio

#LIBGESTURES
#PRODUCT_PACKAGES += \
#    libgestures \
#    gestures.msm8960

# Bluetooth

# QRNG
PRODUCT_PACKAGES += \
    qrngp

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960 \
    memtrack.msm8960

# Lights

# Omx

# HDMI

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# Media

# Power hal
#PRODUCT_PACKAGES += \
#    power.msm8960

# USB

# Filesystem management tools
#PRODUCT_PACKAGES += \
#    e2fsck      \
#    make_ext4fs \
#    setup_fs

# Other apps

# FM 	

# qcom

# telephony configuration

# common build.props
#w PRODUCT_PROPERTY_OVERRIDES += \
#w    persist.sys.usb.config=mtp,adb

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=en \
    ro.product.locale.region=US \
    persist.sys.timezone=Europe/Minsk

#w    ro.product.locale.language=zh \
#w    ro.product.locale.region=CN \
#w    persist.sys.timezone=Asia/Shanghai

#w TODO:
#w persist.sys.timezone=Europe/Moscow
#w ro.product.locale.language=ru
#w ro.product.locale.region=RU

# Camera

# PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Assert
TARGET_OTA_ASSERT_DEVICE := nx403a,NX403A,nx403,NX403

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
# call hwui memory config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
