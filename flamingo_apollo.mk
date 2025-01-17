# Copyright (C) 2021 Paranoid Android
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common Flamingo OS stuff.
$(call inherit-product, vendor/flamingo/target/product/flamingo.mk)

# Flamingo OS build
OFFICIAL_BUILD ?= false

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Override AOSP properties
PRODUCT_NAME := flamingo_apollo
PRODUCT_DEVICE := apollo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2007J3SY
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
