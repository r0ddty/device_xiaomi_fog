#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := false

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)

PRODUCT_NAME := lineage_fog
PRODUCT_DEVICE := fog
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10C

# RisingOS stuff
RISING_CHIPSET="Snapdragon 680"
RISING_MAINTAINER="rootd"

# GAPPS stuff
WITH_GMS := true

# Set both to false to get full GAPPS instead of CORE
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true

# Set to false to get Ortus launcher by default
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Blur
TARGET_ENABLE_BLUR := true

# Camera, set to false to build with aperture camera
PRODUCT_NO_CAMERA := false 

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/fog_global/fog:13/TKQ1.221114.001/V14.0.5.0.TGEMIXM:user/release-keys
