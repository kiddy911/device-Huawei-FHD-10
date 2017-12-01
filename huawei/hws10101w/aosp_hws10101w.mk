#
# Copyright 2015 The Android Open Source Project
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

# Device
$(call inherit-product-if-exists, vendor/huawei/hws10101w/hws10101w-vendor.mk)


# Inherit from the common Open Source product configuration
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/huawei/hws10101w/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_NAME := aosp_hws10101w
PRODUCT_DEVICE := hws10101w
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := MediaPad 10 FHD
PRODUCT_MANUFACTURER := HUAWEI
DEVICE_PACKAGE_OVERLAYS := device/huawei/hws10101w/overlay

 

	


