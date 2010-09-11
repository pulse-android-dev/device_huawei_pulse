#
# Copyright (C) 2008 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS := device/huawei/pulse/overlay

PRODUCT_PACKAGES := \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni \
    SpareParts \
    Development \
    Term \
    GraphicsLab \
    dexpreopt 

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=160 \
    rild.libpath=/system/lib/libril-qc-1.so \
    rild.libargs=-d /dev/smd0 \
    wifi.interface=eth0 \
    wifi.supplicant_scan_interval=180 \
    ro.com.android.dataroaming=false

PRODUCT_COPY_FILES := \
     device/huawei/pulse/include/lib/hw/sensors.default.so:system/lib/hw/sensors.default.so \
     device/huawei/pulse/include/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
     device/huawei/pulse/include/etc/resolv.conf:system/etc/resolv.conf \
     device/huawei/pulse/include/etc/gps.conf:system/etc/gps.conf \
     device/huawei/pulse/include/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
     device/huawei/pulse/include/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
     device/huawei/pulse/include/wifi/ar6000.ko:system/wifi/ar6000.ko \
     device/huawei/pulse/include/wifi/iwlist:system/wifi/iwlist \
     device/huawei/pulse/include/wifi/caldata.bin.ar6002:system/wifi/caldata.bin.ar6002 \
     device/huawei/pulse/include/wifi/data.patch.hw2_0.bin.ar6002:system/wifi/data.patch.hw2_0.bin.ar6002 \
     device/huawei/pulse/include/wifi/device.bin:system/wifi/device.bin \
     device/huawei/pulse/include/wifi/udp_server:system/wifi/udp_server \
     device/huawei/pulse/include/wifi/data.patch.hw2_0.bin.ar6102:system/wifi/data.patch.hw2_0.bin.ar6102 \
     device/huawei/pulse/include/wifi/athtcmd_ram.bin:system/wifi/athtcmd_ram.bin \
     device/huawei/pulse/include/wifi/caldata.bin.ar6102:system/wifi/caldata.bin.ar6102 \
     device/huawei/pulse/include/wifi/artagent:system/wifi/artagent \
     device/huawei/pulse/include/wifi/loadecho.sh:system/wifi/loadecho.sh \
     device/huawei/pulse/include/wifi/athwlan.bin.z77:system/wifi/athwlan.bin.z77 \
     device/huawei/pulse/include/wifi/loadART.sh:system/wifi/loadART.sh \
     device/huawei/pulse/include/wifi/iwconfig:system/wifi/iwconfig \
     device/huawei/pulse/include/etc/apns-conf.xml:system/etc/apns-conf.xml \
     device/huawei/pulse/include/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
     device/huawei/pulse/include/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
     device/huawei/pulse/include/lib/liboncrpc.so:system/lib/liboncrpc.so \
     device/huawei/pulse/include/lib/libdsm.so:system/lib/libdsm.so \
     device/huawei/pulse/include/lib/libqueue.so:system/lib/libqueue.so \
     device/huawei/pulse/include/lib/libcm.so:system/lib/libcm.so \
     device/huawei/pulse/include/lib/libdiag.so:system/lib/libdiag.so \
     device/huawei/pulse/include/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
     device/huawei/pulse/include/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
     device/huawei/pulse/include/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
     device/huawei/pulse/include/lib/libwms.so:system/lib/libwms.so \
     device/huawei/pulse/include/lib/libnv.so:system/lib/libnv.so \
     device/huawei/pulse/include/lib/libwmsts.so:system/lib/libwmsts.so \
     device/huawei/pulse/include/lib/libril-qc-1.so:system/lib/libril-qc-1.so \
     device/huawei/pulse/include/lib/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \
     device/huawei/pulse/include/lib/libdss.so:system/lib/libdss.so \
     device/huawei/pulse/include/lib/libqmi.so:system/lib/libqmi.so \
     device/huawei/pulse/include/bin/qmuxd:system/bin/qmuxd \
     device/huawei/pulse/include/bin/akmd2:system/bin/akmd2 


#     device/huawei/pulse/libcamera.so:obj/lib/libcamera.so \
#     device/huawei/pulse/libcamera.so:system/lib/libcamera.so \


# proprietary side of the device
$(call inherit-product-if-exists, vendor/huawei/pulse/device_pulse-vendor.mk)

DISABLE_DEXPREOPT := false
