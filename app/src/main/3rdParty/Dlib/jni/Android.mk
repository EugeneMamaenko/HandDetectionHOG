LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := dlib
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libdlib.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)\..\include

include $(PREBUILT_STATIC_LIBRARY)
