#include <jni.h>
#include <android/log.h>

#define LOG_TAG "JNILib"
#define JNILib(METHOD) Java_com_example_mykolabondarenko_handdetection_JNILib_##METHOD
#define

extern "C" {

JNIEXPORT void JNILib(initialize) (JNIEnv *env, jclass clazz);

JNIEXPORT void JNILib(onNewFrame) (JNIEnv *env, jclass clazz, jlong newGrameAddr);

JNIEXPORT void JNILib(destroy) (JNIEnv *env, jclass clazz);

}