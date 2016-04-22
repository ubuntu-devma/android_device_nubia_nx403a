## Specify phone tech before including full_phone
#$(call inherit-product, vendor/omni/config/gsm.mk)
#w  $(call inherit-product, device/nubia/nx403a/full_nx403a.mk)

# Release name
PRODUCT_RELEASE_NAME := NX403A

# Inherit some common CM stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/NX403A/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := NX403A
PRODUCT_NAME := omni_NX403A
PRODUCT_BRAND := NUBIA
PRODUCT_MODEL := z5s_mini
PRODUCT_MANUFACTURER := ZTE
