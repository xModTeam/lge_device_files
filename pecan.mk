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

PRODUCT_AAPT_CONFIG := normal ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

$(call inherit-product-if-exists, vendor/lge/pecan/pecan-vendor.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := LG_p350
PRODUCT_DEVICE := pecan
PRODUCT_MODEL := LG Optimus ME
PRODUCT_MANUFACTURER := LGE

# Graphics 
PRODUCT_PACKAGES += \
   libmemalloc \
   libQcomUI \
   libgralloc \
   libcopybit

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
    FM 

# Other
PRODUCT_PACKAGES += \
    librs_jni \
    libcamera \
    gadget_id \
    bash \
    dexpreopt 
    #gps.pecan 

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
    PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Releasetools
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/releasetools/extras.sh:system/bin/extras.sh

# Vold 
PRODUCT_COPY_FILES += \
    device/lge/pecan/files/etc/vold.fstab:system/etc/vold.fstab 

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)
    device/lge/pecan/files/init.pecan.rc:root/init.pecan.rc \
    device/lge/pecan/files/ueventd.pecan.rc:root/ueventd.pecan.rc \
    device/lge/pecan/files/init.pecan.usb.rc:root/init.pecan.usb.rc \
    device/lge/pecan/files/init.lge.hidden_reset.sh:root/init.lge.hidden_reset.sh

# Wifi
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/pecan/files/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/pecan/files/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

# Audio
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/lib/hw/audio.primary.pecan.so:system/lib/hw/audio.primary.pecan.so \
    device/lge/pecan/prebuilt/lib/hw/audio_policy.pecan.so:system/lib/hw/audio_policy.pecan.so \
    vendor/lge/pecan/proprietary/lib/libaudioeq.so:system/lib/libaudioeq.so

# Kernel modules
PRODUCT_COPY_FILES += \
    device/lge/pecan/prebuilt/tun.ko:system/lib/modules/tun.ko 
# Touch and IDC
PRODUCT_COPY_FILES += \
    device/lge/pecan/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/pecan/configs/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/lge/pecan/configs/touch_mcs7000.kl:system/usr/keylayout/touch_mcs7000.kl \
    device/lge/pecan/configs/keychars/touch_mcs7000.kcm.bin:system/usr/keychars/touch_mcs7000.kcm.bin \
    device/lge/pecan/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/lge/pecan/configs/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/lge/pecan/configs/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/lge/pecan/configs/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/lge/pecan/configs/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/lge/pecan/configs/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    device/lge/pecan/configs/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/lge/pecan/configs/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/lge/pecan/configs/idc/touch_mcs7000.idc:system/usr/idc/touch_mcs7000.idc 

# BT startup
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# Camera 
PRODUCT_COPY_FILES += \
     device/lge/pecan/prebuilt/lib/libcamera.so:obj/lib/libcamera.so \
     device/lge/pecan/prebuilt/lib/libcamera.so:system/lib/libcamera.so \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.camera=pecan \
    debug.camcorder.disablemeta=1 \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=20

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    com.qc.hdmi_out=false \
    debug.sf.hw=1 \
    debug.enabletr=false \
    debug.composition.type=ldp \
    debug.gr.numframebuffers=2 \
    debug.qctwa.statusbar=1 \
    debug.qctwa.preservebuf=1 \
    hwui.render_dirty_regions=false \
    hwui.disable_vsync=true \
    hwui.print_config=choice \
    persist.sys.strictmode.visual=false

PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-meta=false \
    media.stagefright.enable-scan=false \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true

