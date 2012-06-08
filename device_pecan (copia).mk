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

# proprietary side of the device
# Inherit from those products. Most specific first

$(call inherit-product-if-exists, vendor/lge/pecan/pecan-vendor.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := LG_p350
PRODUCT_DEVICE := pecan
PRODUCT_MODEL := LG Optimus ME

# Graphics 
PRODUCT_PACKAGES += \
   libmemalloc \
   libQcomUI 
#   libgralloc \
#   libcopybit

# Audio
PRODUCT_PACKAGES += \
   audio_policy.msm7625 \
   audio.primary.msm7625

# Zram
PRODUCT_PACKAGES += \
    hwaddrs

# Video decoding
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc 

# Apps
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    LiveWallpapers \
    LiveWallpapersPicker \
    FM 

# Other
PRODUCT_PACKAGES += \
    librs_jni \
    libcamera \
    gadget_id \
    bash \
    dexpreopt 
    #gps.pecan 
    #lights.pecan \

PRODUCT_LOCALES := en_GB

$(call inherit-product, build/target/product/full.mk)

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 

# Vold 
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/vold.fstab:system/etc/vold.fstab 

# Init
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/init.pecan.rc:root/init.pecan.rc \
    device/lge/pecan/files/ueventd.pecan.rc:root/ueventd.pecan.rc \
    device/lge/pecan/files/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/pecan/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/pecan/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Audio
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/lib/hw/audio.primary.msm7625.so:system/lib/hw/audio.primary.msm7625.so \
    device/lge/pecan/prebuilt/lib/hw/audio_policy.msm7625.so:system/lib/hw/audio_policy.msm7625.so.so \
    vendor/lge/pecan/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so

# Kernel modules
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/tun.ko:system/lib/modules/tun.ko

# Touch
PRODUCT_COPY_FILES += \
    device/lge/pecan/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/pecan/configs/touch_mcs7000.kl:system/usr/keylayout/touch_mcs7000.kl \
    device/lge/pecan/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# Sensors
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so  

# Lights
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/lib/hw/lights.default.so:system/lib/hw/lights.default.so


# ETC
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
    device/lge/pecan/prebuilt/etc/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    device/lge/pecan/prebuilt/etc/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    device/lge/pecan/prebuilt/etc/wl/rtecdc-mfgtest.bin:system/etc/wl/rtecdc-mfgtest.bin \
    device/lge/pecan/prebuilt/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/lge/pecan/prebuilt/etc/MELFAS_FIRM.bin:system/etc/MELFAS_FIRM.bin 

#Gralloc and more stuffs
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/lib/hw/copybit.default.so:system/lib/hw/copybit.default.so \
    device/lge/pecan/prebuilt/lib/hw/gralloc.default.so:system/lib/hw/gralloc.default.so \
    device/lge/pecan/prebuilt/lib/hw/hwcomposer.default.so:system/lib/hw/hwcomposer.default.so \
    device/lge/pecan/prebuilt/lib/hw/sensors.pecan.so:system/lib/hw/sensors.pecan.so 
#    device/lge/pecan/prebuilt/lib/hw/gralloc.pecan.so:system/lib/hw/gralloc.pecan.so \

# Adreno
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/lge/pecan/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/lge/pecan/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/lge/pecan/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/lge/pecan/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so 

# Touch
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    device/lge/pecan/prebuilt/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc \
    device/lge/pecan/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/lge/pecan/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    device/lge/pecan/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    device/lge/pecan/prebuilt/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/lge/pecan/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    device/lge/pecan/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/lge/pecan/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/lge/pecan/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    device/lge/pecan/prebuilt/usr/idc/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \
    device/lge/pecan/prebuilt/usr/keychars/touch_mcs6000.kcm.bin:system/usr/keychars/touch_mcs6000.kcm.bin \
    device/lge/pecan/prebuilt/usr/keylayout/touch_mcs6000.kl:system/usr/keylayout/touch_mcs6000.kl
