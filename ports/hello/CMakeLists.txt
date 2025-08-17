cmake_minimum_required(VERSION 3.15)
project(hello C)  # C project (library)

add_library(hello STATIC hello.c)
target_include_directories(hello PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Installation rules: library, headers, and CMake package configuration
install(TARGETS hello EXPORT helloTargets DESTINATION lib)
install(FILES hello.h DESTINATION include)
install(EXPORT helloTargets FILE helloConfig.cmake NAMESPACE hello:: DESTINATION share/hello)
