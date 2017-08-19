cmake_minimum_required(VERSION 3.5)

project(esp-idf)

# TODO bootloader only
add_definitions(-DBOOTLOADER_BUILD=1)

add_definitions(-DESP_PLATFORM)

add_subdirectory(components/bootloader_support)
add_subdirectory(components/esp32)
add_subdirectory(components/soc)
add_subdirectory(components/freertos)
add_subdirectory(components/spi_flash)
add_subdirectory(components/app_trace)
add_subdirectory(components/driver)
add_subdirectory(components/log)
add_subdirectory(components/xtensa-debug-module)
add_subdirectory(components/micro-ecc)

configure_file(sdkconfig.h.in sdkconfig.h)

