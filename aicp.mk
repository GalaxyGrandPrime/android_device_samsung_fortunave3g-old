#
# Copyright (C) 2015-2016 The CyanogenMod Project
#               2017 The LineageOS Project
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

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit Telephony stuff.
$(call inherit-product, vendor/aicp/configs/telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/fortunave3g/full_fortunave3g.mk)

# Setup device configuration
PRODUCT_DEVICE := fortunave3g
PRODUCT_NAME := aicp_fortunave3g


# AICP Device Maintainer
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Hassan Sardar (Has.007)"

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960
-include vendor/aicp/configs/bootanimation.mk
