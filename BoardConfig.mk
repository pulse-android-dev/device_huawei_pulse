# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RECOVERY := true #We will supply our own recovery for now.
#TARGET_NO_KERNEL := true
#TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv5te

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := libWifiApi
BOARD_WLAN_TI_STA_DK_ROOT   := system/wlan/ti/sta_dk_4_0_4_32
WIFI_DRIVER_MODULE_PATH     := "/system/wifi/ar6000.ko"
WIFI_DRIVER_MODULE_ARG      := ""
WIFI_DRIVER_MODULE_NAME     := "ar6000"

TARGET_CPU_ABI := armeabi

BOARD_HAVE_BLUETOOTH := true

WITH_JIT := true
ENABLE_JSC_JIT := true

# The size of a block that can be marked bad.
#BOARD_FLASH_BLOCK_SIZE := 131072

# OpenGL drivers config file path
BOARD_EGL_CFG := device/huawei/pulse/egl.cfg

# No fallback font by default (space savings)
#NO_FALLBACK_FONT:=true

BOARD_GPS_LIBRARIES := libloc_api


#BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_OLD_CAMERA_HACK := true

#BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_KERNEL_CMDLINE := mem=128M console=ttyMSM2,115200n8 androidboot.hardware=qcom console=ttyUSBCONSOLE0 androidboot.console=ttyUSBCONSOLE0
#BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_BASE := 0x10000000

TARGET_PROVIDES_INIT_RC := true

#BUILD_WITHOUT_PV := true

BUSYBOX_CONFIG := full
CYANOGEN_BIONIC := true    #Needed for BusyBox to compile. We don't actually use Cyanogen's Bionic

ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

