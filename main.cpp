#include <QApplication>
#include <QDebug>

#include "faceattendance.h"
#include "ui_faceattendance.h"

#include <FaceDetector.h>
using namespace seeta::v2;
#include <QFile>
using namespace std;

void loadQss(QApplication &application){
  QFile file(":/qss/style.qss");
  if (file.open(QFile::ReadOnly)){
    QString styleSheet = QLatin1String(file.readAll());
    application.setStyleSheet(styleSheet);
    file.close();
  }
}

#include <filesystem>
namespace fs = std::filesystem;
#include <opencv2/opencv.hpp>
using namespace cv;

int studyOpencv(){

  // 获取当前路径
  std::cout << "Current path is " << fs::current_path() << '\n';
  VideoCapture capture(R"(C:\Users\xy\Desktop\Codes\FaceRecognitionAttendanceSys\video.mp4)");
  if (!capture.isOpened()){
    cout<<"视频读取失败"<<endl;
    return -1;
  }
  namedWindow("Video",WINDOW_NORMAL); // 创建窗口
  while (true){
    Mat frame;
    bool status = capture.read(frame);  // 读取帧
    //如果视频结束，退出循环
    if (!status)
    {
      cout << "End of the video" << endl;
      break;
    }

    //在窗口中显示帧
    imshow("Video", frame);
    //等待1毫秒或用户按下ESC
    if (waitKey(1) == 27)
    {
      cout << "Stopped the video" << endl;
      break;
    }
  }
  return 0;
};



int main(int argc, char *argv[]) {
  QApplication a(argc, argv);
  loadQss(a);
  FaceAttendance face_attendance;
  face_attendance.show();
  studyOpencv();
  qDebug() << "Hello World";
  return QApplication::exec();
}
