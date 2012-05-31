# Prepare for new BootAnimation
TARGET_BOOTANIMATION_NAME := vertical-240x320

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for p500.
$(call inherit-product, device/lge/p350/p350.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Include FM-Radio stuff
#$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

PRODUCT_NAME := cm_p350
PRODUCT_BRAND := lge
PRODUCT_DEVICE := p350
PRODUCT_MODEL := LG-P350
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lge_p350 \
    BUILD_FINGERPRINT="lge/pecan/pecan:2.3.7/GRJ90/20111018:user/release-keys" \
    PRIVATE_BUILD_DESC="pecan-user 2.3.7 GRJ90 20111018 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusMe
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
