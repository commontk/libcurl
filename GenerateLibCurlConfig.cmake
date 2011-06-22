CONFIGURE_FILE(
  ${LIBCURL_SOURCE_DIR}/Uselibcurl.cmake.in
  ${LIBCURL_BINARY_DIR}/Uselibcurl.cmake COPYONLY)

# Library directory
SET(libcurl_LIBRARY_DIRS_CONFIG ${LIBCURL_BINARY_DIR})

# Include directories
SET(libcurl_INCLUDE_DIRS_CONFIG 
  ${LIBCURL_SOURCE_DIR}/curl
  ${LIBCURL_BINARY_DIR}
  )

# Uselibcurl file
SET(libcurl_USE_FILE_CONFIG ${LIBCURL_BINARY_DIR}/Uselibcurl.cmake)

# Configure libcurlConfig.cmake
CONFIGURE_FILE(
  ${LIBCURL_SOURCE_DIR}/libcurlConfig.cmake.in
  ${LIBCURL_BINARY_DIR}/libcurlConfig.cmake @ONLY)
