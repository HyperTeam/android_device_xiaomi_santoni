# CPUsets
ENABLE_CPUSETS := true

# kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78B0000 androidboot.selinux=enforcing
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_CONFIG := lineageos_land_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/msm8937
TARGET_USE_SDCLANG := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# Modules
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/modules/ansi_cprng.ko:system/lib/modules/ansi_cprng.ko \
    $(DEVICE_PATH)/prebuilt/modules/backlight.ko:system/lib/modules/backlight.ko \
    $(DEVICE_PATH)/prebuilt/modules/br_netfilter.ko:system/lib/modules/br_netfilter.ko \
    $(DEVICE_PATH)/prebuilt/modules/evbug.ko:system/lib/modules/evbug.ko \
    $(DEVICE_PATH)/prebuilt/modules/generic_bl.ko:system/lib/modules/generic_bl.ko \
    $(DEVICE_PATH)/prebuilt/modules/lcd.ko:system/lib/modules/lcd.ko \
    $(DEVICE_PATH)/prebuilt/modules/mmc_block_test.ko:system/lib/modules/mmc_block_test.ko \
    $(DEVICE_PATH)/prebuilt/modules/mmc_test.ko:system/lib/modules/mmc_test.ko \
    $(DEVICE_PATH)/prebuilt/modules/rdbg.ko:system/lib/modules/rdbg.ko \
    $(DEVICE_PATH)/prebuilt/modules/spidev.ko:system/lib/modules/spidev.ko \
    $(DEVICE_PATH)/prebuilt/modules/test-iosched.ko:system/lib/modules/test-iosched.ko \
    $(DEVICE_PATH)/prebuilt/modules/ufs_test.ko:system/lib/modules/ufs_test.ko \
    $(DEVICE_PATH)/prebuilt/modules/wil6210.ko:system/lib/modules/wil6210.ko \
    $(DEVICE_PATH)/prebuilt/modules/wlan.ko:system/lib/modules/wlan.ko
