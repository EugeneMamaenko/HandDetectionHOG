
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := JNILib
LOCAL_SRC_FILES := Java_com_example_mykola_bondarenko_handdetection_JNILib.cpp
LOCAL_C_INCLUDES := Java_com_example_mykola_bondarenko_handdetection_JNILib.h
LOCAL_LDLIBS += -llog -ldl
LOCAL_CFLAGS := -fpermissive
LOCAL_STATIC_LIBRARIES := opencv_core opencv_imgproc

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path, $(LOCAL_PATH)/../)
$(call import-module, 3rdParty/OpenCV/jni)
