#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from X695C device
$(call inherit-product, device/infinix/X695C/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Enable proper FBE v2 decryption for Android 11+ (especially for GSI)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.dm_default_key.options_format.version=2 \
    ro.crypto.volume.filenames_mode=aes-256-cts \
    ro.crypto.volume.metadata.method=dm-default-key \
    ro.crypto.volume.options=::v2

# Override fingerprint & build description (for AVB, OTA, and compatibility)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=Infinix/X695C-GL/Infinix-X695C:11/RP1A.200720.011/221114V356:user/release-keys \
    ro.build.description="vnd_x695_h854-user 11 RP1A.200720.011 156472 release-keys"

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X695C
PRODUCT_NAME := twrp_X695C
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X695C
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

PRODUCT_GMS_CLIENTID_BASE := android-transsion
