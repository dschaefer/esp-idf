cmake_minimum_required(VERSION 3.5)

project(esp-idf-bootloader ASM C CXX)

# TODO bootloader only
add_definitions(-DBOOTLOADER_BUILD=1)

add_definitions(-DESP_PLATFORM)
add_definitions(-DHAVE_CONFIG_H)
add_definitions(-DIDF_VER="DougCMake")

add_subdirectory(components)
