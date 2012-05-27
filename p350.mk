PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/p350/p350-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p350/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/p350/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/pecan_keypad.kl:system/usr/keylayout/pecan_keypad.kl \
    $(LOCAL_PATH)/configs/pecan_keypad.kcm.bin:system/usr/keychars/pecan_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh 

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/wireless.ko:system/lib/modules/wireless.ko

# Audio
PRODUCT_PACKAGES += \
    audio_policy.p350 \
    audio.primary.p350


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := p350
PRODUCT_DEVICE := p350
PRODUCT_MODEL := LG Optimus me
