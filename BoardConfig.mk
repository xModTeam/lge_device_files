# Copyright (C) 2011 The Android Open Source Project
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

TARGET_SPECIFIC_HEADER_PATH := device/lge/pecan/include

USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

# Arch related defines
TARGET_BOARD_PLATFORM := msm7k
ARCH_ARM_HAVE_VFP := true
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

# Target properties
TARGET_BOOTLOADER_BOARD_NAME := pecan
TARGET_OTA_ASSERT_DEVICE := p350,pecan

# Target information
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := false
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_RGBX_8888 := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_USES_OLD_LIBSENSORS_HAL:=true
TARGET_OTA_ASSERT_DEVICE := pecan

# Enable OpenGL Hardware Acceleration
USE_OPENGL_RENDERER := true
TARGET_USE_OVERLAY := false
TARGET_HAVE_BYPASS := false
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_GENLOCK := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
BOARD_EGL_CFG := device/lge/pecan/configs/egl.cfg
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true

# Audio & Bluetooth
TARGET_PROVIDES_LIBAUDIO := true
BOARD_COMBO_DEVICE_SUPPORTED := true
BOARD_USES_AUDIO_LEGACY := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_USES_OLD_LIBSENSORS_HAL:=true

# QCOM
#BOARD_USES_QCOM_HARDWARE := true
#BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_ADRENO_200_GPU := true

# GPS
BOARD_GPS_LIBRARIES := libgps #librpc
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := pecan
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Browser
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
HTTP := chrome

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
BOARD_UMS_LUNFILE := /sys/class/android_usb/android0/f_mass_storage/lun/file

# ICS Stuff 
BOARD_HAS_NO_SELECT_BUTTON := true


# RIL
BOARD_PROVIDES_LIBRIL := true

#Nedeed for LGPECAN sensors 
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

# Skia
BOARD_USE_SKIA_LCDTEXT := true
BOARD_FORCE_DITHERING := true

 Wireless
BOARD_WLAN_DEVICE               := bcm4329
WIFI_DRIVER_FW_STA_PATH         := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH          := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME         := "wireless"
WIFI_DRIVER_MODULE_PATH         := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG          := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION          := VER_0_6_X
HOSTAPD_VERSION                 := VER_0_6_X
WIFI_DRIVER_HAS_LGE_SOFTAP      := true
BOARD_WEXT_NO_COMBO_SCAN        := true
BOARD_WPA_SUPPLICANT_DRIVER     := WEXT

# FM Radio
BOARD_FM_DEVICE := bcm4329
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

#Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

#recovery
BOARD_LDPI_RECOVERY := true
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/pecan/recovery/graphics.c

# Kernel
TARGET_PREBUILT_KERNEL := device/lge/pecan/prebuilt/zImage
BOARD_KERNEL_BASE := 0x02808000
BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=pecan
BOARD_PAGE_SIZE := 0x00000800

# Command line for charging mode
BOARD_CHARGING_CMDLINE_NAME := "lge.reboot"
BOARD_CHARGING_CMDLINE_VALUE := "pwroff"
BOARD_USES_RECOVERY_CHARGEMODE := false

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

# # cat /proc/mtd
# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "boot"
# mtd1: 00500000 00020000 "recovery"
# mtd2: 00140000 00020000 "misc"
# mtd3: 00060000 00020000 "splash"
# mtd4: 0aa00000 00020000 "system"
# mtd5: 05d00000 00020000 "cache"
# mtd6: 0a6a0000 00020000 "userdata"
# mtd7: 01400000 00020000 "cust"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bd80000
BOARD_FLASH_BLOCK_SIZE := 131072

