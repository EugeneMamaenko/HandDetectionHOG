LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := zlib
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libz.a
LOCAL_LDLIBS += -lz -lm -llog

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := tbb
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libtbb.a
LOCAL_LDLIBS += -lz -lm -llog

include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_MODULE    := tegra_hal
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libtegra_hal.a
LOCAL_LDLIBS += -lz -lm -llog

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := opencv_core
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libopencv_core.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)\..\include
LOCAL_STATIC_LIBRARIES := tegra_hal tbb zlib

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := opencv_imgproc
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libopencv_imgproc.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)\..\include
LOCAL_STATIC_LIBRARIES := opencv_core gnustl_static tegra_hal tbb zlib

include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := opencv_objdetect
LOCAL_SRC_FILES := $(LOCAL_PATH)\..\lib\libopencv_objdetect.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)\..\include
LOCAL_STATIC_LIBRARIES := opencv_core opencv_imgproc gnustl_static tegra_hal tbb zlib

include $(PREBUILT_STATIC_LIBRARY)
