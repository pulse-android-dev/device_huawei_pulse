# Init setup for Huawei U8220 (T-Mobile Pulse)

LOCAL_PATH := $(call my-dir)

# init.rc in the official Huawei roms is customised. These customisations should be moved into
# the hardware specific init (init.qcom.rc). We will test based on the Huawei roms first then
# clean up later. Once the customisation in init.rc is removed TARGET_PROVIDES_INIT_RC can be set false.

include $(CLEAR_VARS)
LOCAL_MODULE := init.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

# init picks up this file based on the androidboot.hardware kernel cmdline option
include $(CLEAR_VARS)
LOCAL_MODULE := init.qcom.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

# called from init.qcom.rc
include $(CLEAR_VARS)
LOCAL_MODULE := init.qcom.sh
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

