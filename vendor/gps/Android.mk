ifneq (,$(filter gps, $(TARGET_COMMON_QTI_COMPONENTS)))

LOCAL_PATH := $(call my-dir)

ifeq ($(BUILD_BROKEN_USES_BUILD_COPY_HEADERS),true)
include $(CLEAR_VARS)
LOCAL_COPY_HEADERS_TO := qmi_idl_lib.h
LOCAL_COPY_HEADERS := include/qmi_idl_lib.h
LOCAL_VENDOR_MODULE := true
include $(BUILD_COPY_HEADERS)
endif

ifeq ($(BUILD_BROKEN_USES_BUILD_COPY_HEADERS),true)
include $(CLEAR_VARS)
LOCAL_COPY_HEADERS_TO := common_v01.h
LOCAL_COPY_HEADERS := include/common_v01.h
LOCAL_VENDOR_MODULE := true
include $(BUILD_COPY_HEADERS)
endif

endif
