#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from fog device
$(call inherit-product, device/xiaomi/fog/device.mk)

PRODUCT_DEVICE := fog
PRODUCT_NAME := omni_fog
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := fog
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fog-user 11 RKQ1.211001.001 V13.0.13.0.RGEMIXM release-keys"

BUILD_FINGERPRINT := Redmi/fog/fog:11/RKQ1.211001.001/V13.0.13.0.RGEMIXM:user/release-keys
