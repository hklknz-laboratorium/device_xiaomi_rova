#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/xdroid/config/common.mk)
XDROID_BOOT := 720
XDROID_MAINTAINER := HonokaKousaka17
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
# Inherit from rova device
$(call inherit-product, device/xiaomi/rova/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rova
PRODUCT_NAME := xdroid_rova
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4A / 5A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-xdroid

PRODUCT_PACKAGES += \
    xiaomi_riva_overlay_lineage \
    xiaomi_rolex_overlay_lineage

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
