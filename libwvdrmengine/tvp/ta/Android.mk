LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(TOP)/vendor/widevine/oemcryptolevel.mk
ifeq ($(LOCAL_OEMCRYPTO_LEVEL),1)
ifneq ($(filter arm arm64,$(TARGET_ARCH)),)

LOCAL_MODULE := e043cde0-61d0-11e5-9c260002a5d5c51b
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/teetz
LOCAL_MODULE_SUFFIX := .ta
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_STRIP_MODULE := false
LOCAL_MODULE_TAGS := optional
LOCAL_32_BIT_ONLY := true
include $(BUILD_PREBUILT)

endif
endif
