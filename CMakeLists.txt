cmake_minimum_required(VERSION 3.26)
project(FaceRecognitionAttendanceSys)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

# 设置 Qt 的路径
set(CMAKE_PREFIX_PATH "C:/Qt/6.5.3/mingw_64")

# 设置 OpenCV 的路径(.cmake路径)
set(OpenCV_DIR "${CMAKE_CURRENT_SOURCE_DIR}/thirdpart/opencv_x64")

# 设置 SeetFace2 库 路径(.cmake路径)
set(SeetaFace_DIR "${CMAKE_CURRENT_SOURCE_DIR}/thirdpart/SeetFace2_x64/lib/cmake")

# 查找 Qt6 库
find_package(Qt6 COMPONENTS
        Core
        Gui
        Widgets
        REQUIRED)

# 查找 OpenCV 库
find_package(OpenCV REQUIRED)
# 查找 SeetFace2 库
find_package(SeetaFace)


# 搜索头文件
include_directories(include/)
include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(thirdpart/SeetFace2_x64/include/seeta)
file(GLOB HEADER_FILES "include/*.h")

# 搜索源文件
file(GLOB SRC_LIST "src/*.cpp")

# 搜索 UI 文件
file(GLOB UI_FILES "ui/*.ui")

# 搜索资源文件（图片、图标、音乐等）
file(GLOB_RECURSE RESOURCES "sources/*.qrc")

# 调用预编译器 moc，需要使用 QT6_WRAP_CPP 宏
QT6_WRAP_CPP(HEADERS_MOC ${HEADER_FILES})

# 使用 uic 处理 .ui 文件
QT6_WRAP_UI(FORMS_HEADERS ${UI_FILES})

# 处理资源得到 .qrc 文件
QT6_ADD_RESOURCES(RCC ${RESOURCES})

# 添加可执行文件
add_executable(FaceRecognitionAttendanceSys main.cpp ${HEADERS_MOC} ${SRC_LIST} ${FORMS_HEADERS} ${RCC})

# 链接 OpenCV 库
target_link_libraries(FaceRecognitionAttendanceSys ${OpenCV_LIBS})

# 链接 SeetFace2 库
target_link_libraries(FaceRecognitionAttendanceSys ${SeetaFace_LIBRARIES})

# 链接 Qt6 库
target_link_libraries(FaceRecognitionAttendanceSys
        Qt6::Core
        Qt6::Gui
        Qt6::Widgets
)
