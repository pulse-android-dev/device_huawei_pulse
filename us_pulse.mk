# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for a full Android
# build for sapphire hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_small.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/huawei/pulse/device_pulse_us.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

PRODUCT_LOCALES := en_US en_GB es_ES

DISABLE_DEXPREOPT := false
WITH_DEXPREOPT := true

# Discard inherited values and use our own instead.
PRODUCT_NAME := us_pulse
PRODUCT_DEVICE := pulse
PRODUCT_MODEL := T-Mobile Pulse / Huawei U8220 - US

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=160 \
    rild.libpath=/system/lib/libril-qc-1.so \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=180 \
    ro.com.android.dataroaming=false


