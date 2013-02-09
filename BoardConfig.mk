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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common dali
-include device/samsung/dali-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/dalikt/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := dalikt

# Assert
TARGET_OTA_ASSERT_DEVICE := SHV-E120K,dalikt

# Kernel
TARGET_KERNEL_CONFIG        := cyanogenmod_dalikt_defconfig
TARGET_KERNEL_SOURCE        := kernel/samsung/msm8660-common

# Custom recovery font
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_10x18.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_7x16.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_10x18.h\"

# Cwm touch recovery
#BOARD_TOUCH_RECOVERY := true

# Override bootable/recovery/minui/graphics.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/dalikt/recovery/graphics.c

