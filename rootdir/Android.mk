LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := fstab.qcom
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := $(LOCAL_MODULE)
LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.qcom.class_core.sh
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.qcom.early_boot.sh
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.qcom.rc
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.qcom.sh
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.qcom.syspart_fixup.sh
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.class_main.sh
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.qcom.usb.rc
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.qcom.usb.sh
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := init.target.rc
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#w include $(CLEAR_VARS)
#w LOCAL_MODULE       := ueventd.qcom.rc
#w LOCAL_MODULE_TAGS  := optional
#w LOCAL_MODULE_CLASS := ETC
#w LOCAL_SRC_FILES    := $(LOCAL_MODULE)
#w LOCAL_MODULE_PATH  := $(TARGET_ROOT_OUT)
#w include $(BUILD_PREBUILT)

#LOCAL_PATH := $(call my-dir)
