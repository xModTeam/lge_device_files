-include vendor/lge/p350/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

# Nedeed for sensors
COMMON_GLOBAL_CFLAGS += -DUSE_LGE_ALS_DUMMY

TARGET_KERNEL_CONFIG := cyanogenmod_pecan_defconfig

TARGET_KERNEL_SOURCE := kernel/lge/p350

TARGET_BOOTLOADER_BOARD_NAME := p350
TARGET_OTA_ASSERT_DEVICE := pecan,p350

BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=p350 no_console_suspend

USE_CAMERA_STUB := false
