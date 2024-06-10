//
// Created by xy on 2024-06-10.
//

#ifndef FACERECOGNITIONATTENDANCESYS__MAINWINDOW_H_
#define FACERECOGNITIONATTENDANCESYS__MAINWINDOW_H_

#include <QWidget>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QWidget {
 Q_OBJECT

 public:
  explicit MainWindow(QWidget *parent = nullptr);
  ~MainWindow() override;

 private:
  Ui::MainWindow *ui;
};

#endif //FACERECOGNITIONATTENDANCESYS__MAINWINDOW_H_
