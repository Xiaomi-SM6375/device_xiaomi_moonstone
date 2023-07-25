#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from moonstone device
$(call inherit-product, device/xiaomi/stone/device.mk)

PRODUCT_NAME := lineage_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := holi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230705.001.A1 10217028 release-keys"

BUILD_FINGERPRINT := "google/cheetah/cheetah:13/TQ3A.230705.001.A1/10217028:user/release-keys"