#
# Copyright (C) 2013 The CyanogenMod Project
# by Cholokei - leesl0416@naver.com
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/dalikt/dalikt-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/dalikt/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/dalikt/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/samsung/dalikt/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc

# BT firmware
PRODUCT_COPY_FILES += \
    device/samsung/dalikt/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# Inherit from dali-common
$(call inherit-product, device/samsung/dali-common/dali-common.mk)

$(call inherit-product-if-exists, vendor/samsung/dalikt/dalikt-vendor.mk)

