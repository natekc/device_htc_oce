#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

BOARD_VENDOR := htc

DEVICE_PATH := device/htc/oce

# Asserts
TARGET_OTA_ASSERT_DEVICE := oce,ocedugl,htc_ocedugl,oceuhl,htc_oceuhl

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo

TARGET_USES_64_BIT_BINDER := true

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8996
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff printk.devkmsg=on androidboot.hardware=qcom androidkey.dummy=1 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
# BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/htc/oce
TARGET_KERNEL_CONFIG := oce_defconfig

BOARD_ROOT_EXTRA_FOLDERS := bt_firmware crashdump.d firmware persist

# Audio
#AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
#AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NT_PAUSE_TIMEOUT := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
#AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
#AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
#USE_XML_AUDIO_POLICY_CONF := 1
TARGET_USES_QCOM_MM_AUDIO := true

BOARD_ROOT_EXTRA_SYMLINKS := /vendor/lib/dsp:/dsp

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/libbt_vndcfg.txt

# Camera
TARGET_USES_QTI_CAMERA2CLIENT := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true

# CPU
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
TARGET_PROVIDES_POWERHAL := true
TARGET_POWERHAL_VARIANT := voxpopuli
TARGET_USES_INTERACTION_BOOST := false


# Dex
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    WITH_DEXPREOPT ?= true
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY ?= true

# Display
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_OVERLAY := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
USE_OPENGL_RENDERER := true

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Enable Peripheral Manager
TARGET_PER_MGR_ENABLED := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
# TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs
TARGET_EXFAT_DRIVER := exfat

# GPS
TARGET_NO_RPC := true
USE_DEVICE_SPECIFIC_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml

# HWUI
HWUI_COMPILE_FOR_PERF := true

# Init
# TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_INIT_VENDOR_LIB := libinit_oce
TARGET_RECOVERY_DEVICE_MODULES := libinit_oce

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Lineage Hardware
BOARD_HARDWARE_CLASS += \
    $(DEVICE_PATH)/lineagehw

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# NFC
BOARD_NFC_CHIPSET := pn551
BOARD_NFC_HAL_SUFFIX := $(TARGET_BOARD_PLATFORM)

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 234881024
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3103784960 # For smallest China variant, 3690987520 for Euro DUGL / UHL
BOARD_USERDATAIMAGE_PARTITION_SIZE := 59039023104
TARGET_USES_MKE2FS := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.full
TARGET_USERIMAGES_USE_EXT4 := true

# Release
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/oce/releasetools

# RIL
TARGET_PROVIDES_QTI_TELEPHONY_JAR := true
TARGET_RIL_VARIANT := caf

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
# BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# SHIMS
TARGET_LD_SHIM_LIBS := /system/vendor/lib64/libril.so|/system/vendor/lib64/libshim_ril.so

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
PRODUCT_COMPATIBILITY_MATRIX_LEVEL_OVERRIDE := 27
# PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Wifi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP      := "/vendor/firmware/fw_bcm4359_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/vendor/firmware/fw_bcm4359.bin"
WIFI_DRIVER_FW_PATH_STA     := "/vendor/firmware/fw_bcm4359.bin"

# inherit from the proprietary version
-include vendor/htc/oce/BoardConfigVendor.mk
