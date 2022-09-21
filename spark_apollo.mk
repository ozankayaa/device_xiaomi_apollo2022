#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Spark-OS stuff.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true

USE_GAPPS ?= true
USE_AOSP_CLOCK := true
USE_PIXEL_CHARGING := true

WITH_GAPPS := true

# Disable touch video heatmap to reduce latency, motion jitter, and CPU usage
# on supported devices with Deep Press input classifier HALs and models
PRODUCT_PRODUCT_PROPERTIES += \
    ro.input.video_enabled=false

# Disable blur on app-launch
PRODUCT_PRODUCT_PROPERTIES += \
    ro.launcher.blur.appLaunch=false

# Fling Sysprops
PRODUCT_PRODUCT_PROPERTIES += \
    ro.min.fling_velocity=50 \
    ro.max.fling_velocity=16000



PRODUCT_NAME := spark_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
