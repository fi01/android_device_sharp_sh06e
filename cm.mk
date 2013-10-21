## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := sh06e

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sharp/sh06e/device_sh06e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sh06e
PRODUCT_NAME := cm_sh06e
PRODUCT_BRAND := sharp
PRODUCT_MODEL := sh06e
PRODUCT_MANUFACTURER := sharp
