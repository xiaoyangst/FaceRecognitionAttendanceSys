#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SeetaFace::SeetaFaceDetector" for configuration ""
set_property(TARGET SeetaFace::SeetaFaceDetector APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(SeetaFace::SeetaFaceDetector PROPERTIES
  IMPORTED_IMPLIB_NOCONFIG "${_IMPORT_PREFIX}/lib/libSeetaFaceDetector.dll.a"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "SeetaFace::SeetaNet"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/libSeetaFaceDetector.dll"
  )

list(APPEND _cmake_import_check_targets SeetaFace::SeetaFaceDetector )
list(APPEND _cmake_import_check_files_for_SeetaFace::SeetaFaceDetector "${_IMPORT_PREFIX}/lib/libSeetaFaceDetector.dll.a" "${_IMPORT_PREFIX}/bin/libSeetaFaceDetector.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
