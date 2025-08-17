set(SOURCE_PATH "${CURRENT_PORT_DIR}")

vcpkg_cmake_configure(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/hello PACKAGE_NAME hello)

# Optional usage file & license
file(WRITE "${CURRENT_PACKAGES_DIR}/share/${PORT}/usage"
"find_package(hello CONFIG REQUIRED)\n"
"target_link_libraries(yourapp PRIVATE hello::hello)\n")
vcpkg_install_copyright(FILE_LIST "${CURRENT_PORT_DIR}/LICENSE")