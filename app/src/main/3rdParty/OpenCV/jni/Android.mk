LOCAL_PATH := $(call my-dir)

#include $(CLEAR_VARS)

#LOCAL_MODULE    := zlib
#LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libzlib.a
#LOCAL_LDLIBS += -lz -lm -llog

#include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := opencv_core
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libopencv_core.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)\..\include
#LOCAL_STATIC_LIBRARIES := zlib

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := opencv_imgproc
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libopencv_imgproc.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)\..\include
LOCAL_STATIC_LIBRARIES := opencv_core gnustl_static

include $(PREBUILT_STATIC_LIBRARY)
