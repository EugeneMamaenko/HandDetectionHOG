package com.example.mykolabondarenko.handdetection;

import org.opencv.core.Mat;

/**
 * Created by Mykola Bondarenko on 5/2/2017.
 */

public class JNILib {

    static {
        System.loadLibrary("JNILib");
    }

    public static native void initialize();
    public static native void onNewFrame(long newFrameAddr);
    public static native void destroy();
}
