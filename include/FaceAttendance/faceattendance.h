//
// Created by xy on 2024-06-13.
//

#ifndef FACERECOGNITIONATTENDANCESYS__FACEATTENDANCE_H_
#define FACERECOGNITIONATTENDANCESYS__FACEATTENDANCE_H_

#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class FaceAttendance; }
QT_END_NAMESPACE

class FaceAttendance : public QMainWindow {
 Q_OBJECT

 public:
  explicit FaceAttendance(QWidget *parent = nullptr);
  ~FaceAttendance() override;

 private:
  Ui::FaceAttendance *ui;
};

#endif //FACERECOGNITIONATTENDANCESYS__FACEATTENDANCE_H_
