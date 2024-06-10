#include <QApplication>
#include <QDebug>

#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <FaceDetector.h>
using namespace seeta::v2;
#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;

void test(){
  cv::Mat image = cv::imread(R"(C:\Users\xy\Pictures\ClionPicture\02.jpg)", cv::IMREAD_COLOR);

  if (image.empty()) {
    std::cout << "无法加载图像！" << std::endl;
    return ;
  }

// 创建窗口并显示图像
  cv::namedWindow("test", cv::WINDOW_NORMAL);
  cv::imshow("test", image);

// 等待用户按下任意键后关闭窗口
  cv::waitKey(0);

// 释放窗口和图像资源
  cv::destroyAllWindows();
  image.release();
}

void face(){
  seeta::ModelSetting::Device device = seeta::ModelSetting::CPU;
  int id = 0;
  seeta::ModelSetting FD_mddel(R"(C:\Users\xy\Desktop\Codes\FaceRecognitionAttendanceSys\thirdpart\SeetFace2_x64\bin\model\fd_2_00.dat)",device,id);
  seeta::FaceDetector FD(FD_mddel);
}

int main(int argc, char *argv[]) {
  QApplication a(argc, argv);
  MainWindow main_window;
  main_window.show();
  test();
  face();
  qDebug() << "Hello World";
  return QApplication::exec();
}
