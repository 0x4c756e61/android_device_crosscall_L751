#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from L751 device
$(call inherit-product, device/crosscall/L751/device.mk)

PRODUCT_DEVICE := L751
PRODUCT_NAME := omni_L751
PRODUCT_BRAND := Crosscall
PRODUCT_MODEL := Core-M5
PRODUCT_MANUFACTURER := crosscall

PRODUCT_GMS_CLIENTID_BASE := android-crosscall

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="L751-user 11 RKQ1.210107.001 L751_10.22.2 release-keys"

BUILD_FINGERPRINT := Crosscall/L751/L751:11/RKQ1.210107.001/L751_10.22.2:user/release-keys
