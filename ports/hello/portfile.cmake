vcpkg_cmake_configure(
    SOURCE_PATH "${CURRENT_PORT_DIR}"
)

vcpkg_cmake_build()
vcpkg_cmake_install()

# If you have a LICENSE file, point to it here:
vcpkg_install_copyright(FILE_LIST "${CURRENT_PORT_DIR}/copyright")
