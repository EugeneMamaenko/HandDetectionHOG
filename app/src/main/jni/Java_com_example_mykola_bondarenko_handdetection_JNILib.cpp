#include "Java_com_example_mykola_bondarenko_handdetection_JNILib.h"

#include <opencv2/imgproc/imgproc.hpp>

#include <dlib/opencv.h>
#include <dlib/svm_threaded.h>
#include <dlib/gui_widgets.h>
#include <dlib/image_processing.h>
#include <dlib/data_io.h>

#include <chrono>

using namespace cv;
using namespace std;
using namespace dlib;


std::string pathToHOGClassifier = "/storage/emulated/0/Data/detector_1e-13_60.svm";

typedef scan_fhog_pyramid<pyramid_down<2> > image_scanner_type;
image_scanner_type scanner;
object_detector<image_scanner_type> detector;


void JNILib(initialize) (JNIEnv *env, jclass clazz)
{
    deserialize(pathToHOGClassifier) >> detector;
}

void JNILib(onNewFrame) (JNIEnv *env, jclass clazz, jlong newFrameAddr)
{
    if (newFrameAddr == NULL)
        return;
    cv::Mat *newFrame = (cv::Mat *) newFrameAddr;
    if (newFrame == NULL)
        return;

    cv_image<rgb_pixel> cimg(*newFrame);

    auto t1 = std::chrono::high_resolution_clock::now();

    std::vector<dlib::rectangle> hands = detector(cimg);

    auto t2 = std::chrono::high_resolution_clock::now();
    auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
    std::chrono::duration<double, std::milli> fp_ms = t2 - t1;
    LOGE("It took me %f microseconds.", fp_ms.count());


    for (auto hand : hands) {
        cv::rectangle(*newFrame, Rect(hand.left(), hand.top(), hand.width(), hand.height()), cv::Scalar(255, 0, 0));
    }
}

void JNILib(destroy) (JNIEnv *env, jclass clazz)
{

}