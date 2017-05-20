#include <jni.h>
#include <android/log.h>

#define LOG_TAG "JNILib"
#define JNILib(METHOD) Java_com_example_mykolabondarenko_handdetection_JNILib_##METHOD
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, LOG_TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

extern "C" {

JNIEXPORT void JNILib(initialize) (JNIEnv *env, jclass clazz);

JNIEXPORT void JNILib(onNewFrame) (JNIEnv *env, jclass clazz, jlong newGrameAddr);

JNIEXPORT void JNILib(destroy) (JNIEnv *env, jclass clazz);

}