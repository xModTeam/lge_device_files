-include vendor/lge/p350/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

# Nedeed for sensors
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

TARGET_KERNEL_CONFIG := cyanogenmod_pecan_defconfig

TARGET_BOOTLOADER_BOARD_NAME := p350
TARGET_OTA_ASSERT_DEVICE := pecan,p350

USE_CAMERA_STUB := false






