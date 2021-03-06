LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(TOP)/vendor/widevine/oemcryptolevel.mk
ifeq ($(LOCAL_OEMCRYPTO_LEVEL),1)
ifneq ($(filter arm arm64,$(TARGET_ARCH)),)

LOCAL_MODULE := liboemcrypto
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_STRIP_MODULE := false

LOCAL_32_BIT_ONLY := true
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

endif
endif
