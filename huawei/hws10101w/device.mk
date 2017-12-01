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
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


LOCAL_PATH := device/huawei/hws10101w

# Boot ramdisk	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/init.1g.rc:root/init.1g.rc \
    $(LOCAL_PATH)/root/init.goldfish.rc:root/init.goldfish.rc \
    $(LOCAL_PATH)/root/init.hws10101w.rc:root/init.hws10101w.rc \
    $(LOCAL_PATH)/root/fstab.hws10101w:root/fstab.hws10101w \
    $(LOCAL_PATH)/root/ueventd.hws10101w.rc:root/ueventd.hws10101w.rc \
    $(LOCAL_PATH)/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/root/init.k3v2oem1.usb.rc:root/init.k3v2oem1.usb.rc \
    $(LOCAL_PATH)/root/fstab.goldfish:root/fstab.goldfish \
    $(LOCAL_PATH)/root/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    $(LOCAL_PATH)/root/init.recovery.hws10101w.rc:root/init.recovery.hws10101w.rc \
    $(LOCAL_PATH)/root/recovery.fstab:root/recovery.fstab
   	


	
# Permissions
# Input device files for S10
# Keylayouts	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/hisik3_touchscreen.idc:system/usr/idc/hisik3_touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/k3_keypad.idc:system/usr/idc/k3_keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/k3_keypad.kl:system/usr/keylayout/k3_keypad.kl


# Audio configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/asound_CNSLR.dat:system/etc/asound_CNSLR.dat \
    $(LOCAL_PATH)/audio/asound_ENSLR.dat:system/etc/asound_ENSLR.dat \
    $(LOCAL_PATH)/audio/asound_NOSAFTY.dat:system/etc/asound_NOSAFTY.dat \
    $(LOCAL_PATH)/audio/volume_fm_CNSLR.dat:system/etc/volume_fm_CNSLR.dat \
    $(LOCAL_PATH)/audio/volume_fm_ENSLR.dat:system/etc/volume_fm_ENSLR.dat \
    $(LOCAL_PATH)/audio/volume_incall_CNSLR.dat:system/etc/volume_incall_CNSLR.dat \
    $(LOCAL_PATH)/audio/volume_incall_ENSLR.dat:system/etc/volume_incall_ENSLR.dat \
    $(LOCAL_PATH)/audio/es305_cs.bin:system/etc/es305_cs.bin \
    $(LOCAL_PATH)/audio/es305_es.bin:system/etc/es305_es.bin \
    $(LOCAL_PATH)/audio/es305_uart.bin:system/etc/es305_uart.bin \
    $(LOCAL_PATH)/audio/tpa2028.cfg:system/etc/tpa2028.cfg \
    $(LOCAL_PATH)/audio/k3_omx.cfg:system/etc/k3_omx.cfg \
    $(LOCAL_PATH)/prebuilt/etc/ril_xgold_radio.cfg:/system/etc/ril_xgold_radio.cfg \
    $(LOCAL_PATH)/prebuilt/etc/ril_balong_radio.cfg:/system/etc/ril_balong_radio.cfg
   

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/com.broadcom.bt.le.xml:system/etc/permissions/com.broadcom.bt.le.xml \
    $(LOCAL_PATH)/permissions/com.broadcom.bt.xml:system/etc/permissions/com.broadcom.bt.xml \
    $(LOCAL_PATH)/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    $(LOCAL_PATH)/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    $(LOCAL_PATH)/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    $(LOCAL_PATH)/permissions/com.huawei.hwextcamera.xml:system/etc/permissions/com.huawei.hwextcamera.xml \
    $(LOCAL_PATH)/permissions/com.huawei.dolby.xml:system/etc/permissions/com.huawei.dolby.xml \
    $(LOCAL_PATH)/permissions/hwframework.xml:system/etc/permissions/hwframework.xml \
    $(LOCAL_PATH)/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/permissions/platform.xml:system/etc/permissions/platform.xml 
    
    PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/audio/codec/asound_CNSLR.dat:system/etc/audio/codec/asound_CNSLR.dat \
    $(LOCAL_PATH)/prebuilt/etc/audio/codec/asound_ENSLR.dat:system/etc/audio/codec/asound_ENSLR.dat \
    $(LOCAL_PATH)/prebuilt/etc/audio/codec/asound_NOSAFTY.dat:system/etc/audio/codec/asound_NOSAFTY.dat \
    $(LOCAL_PATH)/prebuilt/etc/audio/tpa2028/tpa2028.cfg:system/etc/audio/tpa2028/tpa2028.cfg
    
    
# Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/firmware/atmel_mxt1386.img:system/etc/firmware/atmel_mxt1386.img \
    $(LOCAL_PATH)/prebuilt/etc/firmware/synaptics_s7300_CMI.img:system/etc/firmware/synaptics_s7300_CMI.img \
    $(LOCAL_PATH)/prebuilt/etc/firmware/synaptics_s7300_CMI_V9.img:system/etc/firmware/synaptics_s7300_CMI_V9.img \
    $(LOCAL_PATH)/prebuilt/etc/firmware/synaptics_s7300_JUNDA.img:system/etc/firmware/synaptics_s7300_JUNDA.img \
    $(LOCAL_PATH)/prebuilt/etc/firmware/synaptics_s7300_OFLIM.img:system/etc/firmware/synaptics_s7300_OFLIM.img \
    $(LOCAL_PATH)/prebuilt/etc/firmware/synaptics_s7300_TPK.img:system/etc/firmware/synaptics_s7300_TPK.img \
    $(LOCAL_PATH)/prebuilt/etc/firmware/synaptics_s7300_YUSHUN.img:system/etc/firmware/synaptics_s7300_YUSHUN.img \
    $(LOCAL_PATH)/coulometer/bq27510_version:system/etc/coulometer/bq27510_version \
    $(LOCAL_PATH)/coulometer/bq27510_firmware.dffs:system/etc/coulometer/bq27510_firmware.dffs \
    $(LOCAL_PATH)/coulometer/bq27510_firmware.bqfs:system/etc/coulometer/bq27510_firmware.bqfs
 


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/camera_orientation.cfg:system/etc/camera_orientation.cfg \
    $(LOCAL_PATH)/camera/camera_resolutions.cfg:system/etc/camera_resolutions.cfg  
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/dbus.conf:system/etc/dbus.conf
          
# busybox
PRODUCT_PACKAGES += \
	busybox
	
# audio policy configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf


# audio effects
#PRODUCT_PACKAGES += libaudience_voicefx

# BCM47511 GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gpsconfig.xml:system/etc/gpsconfig.xml \
    $(LOCAL_PATH)/gps/gpsconfig_f.xml:system/etc/gpsconfig_f.xml \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/glgps:system/bin/glgps \
    $(LOCAL_PATH)/gps/gps.cer:system/bin/gps.cer
    
# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/BCM4330B1_10_FHD_NO_FM.hcd:system/etc/bluetooth/BCM4330B1_10_FHD_NO_FM.hcd \
    $(LOCAL_PATH)/bluetooth/BCM4330B1_10_FHD_WITH_FM.hcd:system/etc/bluetooth/BCM4330B1_10_FHD_WITH_FM.hcd \
    $(LOCAL_PATH)/bluetooth/BCM4330B1_10_LINK_NO_FM.hcd:system/etc/bluetooth/BCM4330B1_10_LINK_NO_FM.hcd     
    
PRODUCT_PACKAGES += \
    gps.k3v2oem1





PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_CHARACTERISTICS := tablet


    

# Advanced Settings for Huawei

# Vivante Display


    
# Audio
PRODUCT_PACKAGES += \
    audio.primary.default \
    audio.a2dp.default \
    audio_policy.default \
    audio.usb.default
    
PRODUCT_PACKAGES += \
    libemoji \
    sf2 \
    libaudioutils \
    libaudio-resampler \
    audioloop \
    codec


# Omx
PRODUCT_PACKAGES += \
    libstagefrighthw
    
  
# GPS
PRODUCT_PACKAGES += \
    gps.default
    
# Power
PRODUCT_PACKAGES += \
    power.default \
    lights.default

# WiFi
PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    hostapd.conf
    
# Bcmdhd
PRODUCT_PACKAGES += \
    libatcmdserver \
    libnetcmdiface
   

       

# Misc
PRODUCT_PACKAGES += \
    librs_jni \
    libsrec_jni \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    dexpreopt \
    setup_fs

PRODUCT_PACKAGES += \
    Torch \
    Stk
        
# Bluetooth & FmRadio
PRODUCT_PACKAGES += \
    uim-sysfs \
    hciconfig \
    hcitool \
    libbt-vendor \
    bt_sco_app \
    BluetoothSCOApp \
    libtinyalsa



# General
PRODUCT_PROPERTY_OVERRIDES := \
    ro.config.fm_type=libbcmfm_if 
 
# Enable switch storage 
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/prebuilt/etc/init.d/preparesd:system/etc/init.d/preparesd
    	
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    ap.interface=wlan1 \
    persist.sys.usb.config=mtp,adb \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240 \
    hw.lcd.density=240
 
PRODUCT_TAGS += dalvik.gc.type-precise
   

   
# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-1024-dalvik-heap.mk)
    

	
$(call inherit-product-if-exists, hardware/k3v2oem1/k3v2oem1.mk)
$(call inherit-product-if-exists, vendor/huawei/hws10101w/device-vendor.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
