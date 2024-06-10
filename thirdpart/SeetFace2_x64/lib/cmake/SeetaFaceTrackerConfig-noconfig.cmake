#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SeetaFace::SeetaFaceTracker" for configuration ""
set_property(TARGET SeetaFace::SeetaFaceTracker APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(SeetaFace::SeetaFaceTracker PROPERTIES
  IMPORTED_IMPLIB_NOCONFIG "${_IMPORT_PREFIX}/lib/libSeetaFaceTracker.dll.a"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "SeetaFace::SeetaFaceDetector"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/libSeetaFaceTracker.dll"
  )

list(APPEND _cmake_import_check_targets SeetaFace::SeetaFaceTracker )
list(APPEND _cmake_import_check_files_for_SeetaFace::SeetaFaceTracker "${_IMPORT_PREFIX}/lib/libSeetaFaceTracker.dll.a" "${_IMPORT_PREFIX}/bin/libSeetaFaceTracker.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
