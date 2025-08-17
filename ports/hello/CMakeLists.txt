cmake_minimum_required(VERSION 3.15)
project(hello LANGUAGES C)

add_library(hello src/hello.c)
target_compile_definitions(hello PRIVATE HELLO_BUILD)

# Critical bit: BUILD_INTERFACE uses source path, INSTALL_INTERFACE uses installed include/
target_include_directories(hello PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>)

# Nice-to-have properties
set_target_properties(hello PROPERTIES
    OUTPUT_NAME hello
    WINDOWS_EXPORT_ALL_SYMBOLS ON)

include(GNUInstallDirs)

install(TARGETS hello
    EXPORT helloTargets
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# Install headers from include/ into the package include/
install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})
