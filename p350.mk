PRODUCT_AAPT_CONFIG := normal ldpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/lge/p350/p350-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p350/overlay

# configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/pecan_keypad.kl:system/usr/keylayout/pecan_keypad.kl \
    $(LOCAL_PATH)/configs/pecan_keypad.kcm.bin:system/usr/keychars/pecan_keypad.kcm.bin \
    $(LOCAL_PATH)/configs/touch_mcs6000.idc:system/usr/idc/touch_mcs6000.idc \
    $(LOCAL_PATH)/prebuilt/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/configs/touch_mcs7000.idc:system/usr/idc/touch_mcs7000.idc \
    $(LOCAL_PATH)/configs/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl


# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nvram.txt:system/etc/wl/nvram.txt \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \

# BT
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

# Audio
PRODUCT_PACKAGES += \
    audio_policy.p350 \
    audio.primary.p350


$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := p350
PRODUCT_DEVICE := p350
PRODUCT_MODEL := LG-P350

