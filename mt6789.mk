#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

Inherit from device makefile.
$(call inherit-product, device/transsion/mt6789-common/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_GMS_CLIENTID_BASE := android-transsion

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

# Inherit the proprietary files
include vendor/transsion/mt6789-common/BoardConfigVendor.mk
