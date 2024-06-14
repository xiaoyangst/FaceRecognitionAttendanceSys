//
// Created by xy on 2024-06-13.
//

// You may need to build the project (run Qt uic code generator) to get "ui_FaceAttendance.h" resolved

#include "faceattendance.h"
#include "ui_FaceAttendance.h"

FaceAttendance::FaceAttendance(QWidget *parent) :
    QMainWindow(parent), ui(new Ui::FaceAttendance) {
  ui->setupUi(this);
}

FaceAttendance::~FaceAttendance() {
  delete ui;
}
