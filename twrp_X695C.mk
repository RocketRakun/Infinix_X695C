#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from X695C device
$(call inherit-product, device/infinix/X695C/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2 \
    ro.crypto.volume.filenames_mode=aes-256-cts \
    ro.crypto.volume.metadata.method=dm-default-key \
    ro.crypto.volume.options=::v2

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X695C
PRODUCT_NAME := twrp_X695C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X695C
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

PRODUCT_GMS_CLIENTID_BASE := android-transsion
