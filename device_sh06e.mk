$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/sharp/sh06e/sh06e-vendor.mk)

PRODUCT_COPY_FILES += \
  device/sharp/sh06e/root/ueventd.qcom.rc:root/ueventd.qcom.rc

PRODUCT_COPY_FILES += \
  device/sharp/sh06e/system/SH_touchpanel.idc:system/usr/idc/SH_touchpanel.idc \
  device/sharp/sh06e/system/shtps_rmi.idc:system/usr/idc/shtps_rmi.idc

DEVICE_PACKAGE_OVERLAYS += device/sharp/sh06e/overlay

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_sh06e
PRODUCT_DEVICE := sh06e
