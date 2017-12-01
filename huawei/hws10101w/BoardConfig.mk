#
# Copyright (C) 2015 The Android Open-Source Project
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
BOARD_VENDOR := Huawei

LOCAL_PATH := device/huawei/hws10101w

TARGET_BOOTLOADER_BOARD_NAME := hws10101w
DISABLE_DEXPREOPT := true


TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false
TARGET_BOOTANIMATION_PRELOAD := true

# Architecture
TARGET_BOARD_PLATFORM := k3v2oem1
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp


NEED_WORKAROUND_CORTEX_A9_745320 := true

# Local flag

BOARD_USE_K3V2OEM1 := true
LOCAL_CFLAGS += -DUSE_K3V2OEM1

BOARD_VENDOR_PLATFORM := k3v2oem1
# Kernel
TARGET_KERNEL_SOURCE := kernel/huawei/hws10101w
#TARGET_KERNEL_CONFIG := hisi-s10_A_wifi_SE_defconfig

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
BOARD_KERNEL_CMDLINE := console=ttyS0 k3v2_pmem=1 vmalloc=512M androidboot.hardware=hws10101w androidboot.carrier=wifi-only mmcparts=mmcblk0:p1(xloader),p3(nvme),p4(misc),p5(splash),p6(oeminfo),p7(logo),p8(vrcb),p9(recovery2),p10(recovery),p11(boot),p12(modemimage),p13(modemnv),p14(modemnvm2),p15(cache),p16(system),p17(cust),p18(userdata),p19(reserve1),p20(reserve2),p21(reserve3),p22(data);mmcblk1:p1(sdcard2)

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/zImage
ifeq ($(TARGET_PREBUILT_KERNEL),)
  LOCAL_KERNEL := $(LOCAL_PATH)/zImage
else
  LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif


PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel


# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

# SeLinux

BOARD_SEPOLICY_DIRS += \
	device/huawei/hws10101w/sepolicy

BOARD_SEPOLICY_UNION += \
    bluetooth.te \
    debuggered.te \
    domain.te \
    device.te \
    dhcp.te \
    file_contexts \
    init_shell.te \
    mediaserver.te \
    netd.te \
    rild.te \
    system.te \
    vold.te
    
TARGET_BOARD_INFO_FILE := device/huawei/hws10101w/board-info.txt

# Recovery
TARGET_RECOVERY_FSTAB := device/huawei/hws10101w/root/recovery.fstab
TARGET_COPY_OUT_VENDOR := system/vendor
TARGET_RELEASETOOLS_EXTENSIONS := device/huawei/hws10101w
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/root/init.recovery.hws10101w.rc
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_TOUCH_RECOVERY := 
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_8888"
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_RECOVERY_SWIPE := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5926551552
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

# Vold&Usb
BOARD_MTP_DEVICE := "/dev/mtp_usb"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO := true

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4330
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# Camera
BOARD_CAMERA_HAVE_ISO := true
USE_CAMERA_STUB := false
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB

# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/prebuilt/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 4
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH

# HWComposer
BOARD_USES_HWCOMPOSER := true
#BOARD_USE_SYSFS_VSYNC_NOTIFICATION := true








# Wifi
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4330.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcm4330_p2p.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4330_apsta.bin"



# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/hws10101w/bluetooth
#BLUETOOTH_HCI_USE_USB := true          
BOARD_WPAN_DEVICE :=true

  

# Misc
BOARD_NEEDS_CUTILS_LOG := true
BOARD_SCREENRECORD_DEVICE_FORCE_AUDIO_MIC := true
TARGET_GRALLOC_USES_ASHMEM := true
BOARD_USES_SECURE_SERVICES := true
TARGET_USES_PMEM := true




# Sensors
BOARD_VENDOR_USE_AKMD := true
BOARD_VENDOR_USE_AKMD := akm8975


# WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true


-include vendor/huawei/hws10101w/BoardConfigVendor.mk
