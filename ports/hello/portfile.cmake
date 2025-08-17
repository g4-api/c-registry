vcpkg_configure_cmake(
  SOURCE_PATH ${CMAKE_CURRENT_LIST_DIR}
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_copy_pdbs()  # (Optional, handles Windows PDB files if any)
