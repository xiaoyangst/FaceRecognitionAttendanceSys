#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SeetaFace::SeetaNet" for configuration ""
set_property(TARGET SeetaFace::SeetaNet APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(SeetaFace::SeetaNet PROPERTIES
  IMPORTED_IMPLIB_NOCONFIG "${_IMPORT_PREFIX}/lib/libSeetaNet.dll.a"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "Ws2_32"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/bin/libSeetaNet.dll"
  )

list(APPEND _cmake_import_check_targets SeetaFace::SeetaNet )
list(APPEND _cmake_import_check_files_for_SeetaFace::SeetaNet "${_IMPORT_PREFIX}/lib/libSeetaNet.dll.a" "${_IMPORT_PREFIX}/bin/libSeetaNet.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
