#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SeetaFace::SeetaQualityAssessor" for configuration ""
set_property(TARGET SeetaFace::SeetaQualityAssessor APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(SeetaFace::SeetaQualityAssessor PROPERTIES
  IMPORTED_IMPLIB_NOCONFIG "${_IMPORT_PREFIX}/lib/libSeetaQualityAssessor.dll.a"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/libSeetaQualityAssessor.dll"
  )

list(APPEND _cmake_import_check_targets SeetaFace::SeetaQualityAssessor )
list(APPEND _cmake_import_check_files_for_SeetaFace::SeetaQualityAssessor "${_IMPORT_PREFIX}/lib/libSeetaQualityAssessor.dll.a" "${_IMPORT_PREFIX}/bin/libSeetaQualityAssessor.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
