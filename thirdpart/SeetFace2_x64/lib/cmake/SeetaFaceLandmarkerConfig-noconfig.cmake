#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SeetaFace::SeetaFaceLandmarker" for configuration ""
set_property(TARGET SeetaFace::SeetaFaceLandmarker APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(SeetaFace::SeetaFaceLandmarker PROPERTIES
  IMPORTED_IMPLIB_NOCONFIG "${_IMPORT_PREFIX}/lib/libSeetaFaceLandmarker.dll.a"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "SeetaFace::SeetaNet"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/libSeetaFaceLandmarker.dll"
  )

list(APPEND _cmake_import_check_targets SeetaFace::SeetaFaceLandmarker )
list(APPEND _cmake_import_check_files_for_SeetaFace::SeetaFaceLandmarker "${_IMPORT_PREFIX}/lib/libSeetaFaceLandmarker.dll.a" "${_IMPORT_PREFIX}/bin/libSeetaFaceLandmarker.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
