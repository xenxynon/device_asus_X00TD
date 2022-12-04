#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some riceDroid stuff.
RICE_MAINTAINER := SKetU
RICE_OFFICIAL := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
SUSHI_BOOTANIMATION := 1080
TARGET_BUILD_GRAPHENEOS_CAMERA := false
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := false

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00T \
    PRODUCT_NAME=WW_X00T
