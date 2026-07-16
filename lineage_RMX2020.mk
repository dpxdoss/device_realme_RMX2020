#
# Copyright (C) 2018-2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2020/device.mk)

# Inherit some common Evolution X stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_RMX2020
PRODUCT_DEVICE := RMX2020
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme Monet
PRODUCT_MANUFACTURER := realme

# Common flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build flags
EVO_BUILD_TYPE := Unofficial
WITH_GMS := false
TARGET_INCLUDE_ACCORD := true
TARGET_ENABLE_BLUR := false

# Sign-Keys
include vendor/evolution-priv/keys/keys.mk

# Reseve Size
include vendor/lineage/config/BoardConfigReservedSize.mk

# ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX2020-user 11 RP1A.200720.011 1652239672541 release-keys" \
    BuildFingerprint=realme/RMX2020/RMX2020:11/RP1A.200720.011/1652239672541:user/release-keys \
    DeviceName=RMX2020 \
    DeviceProduct=RMX2020 \
    SystemDevice=RMX2020 \
    SystemName=RMX2020

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BuildFingerprint)
