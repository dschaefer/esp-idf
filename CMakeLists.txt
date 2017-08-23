cmake_minimum_required(VERSION 3.5)

project(esp-idf)

# TODO bootloader only
add_definitions(-DBOOTLOADER_BUILD=1)

add_definitions(-DESP_PLATFORM)

add_subdirectory(components/app_trace)
add_subdirectory(components/app_update)
add_subdirectory(components/bootloader_support)
add_subdirectory(components/bt)
add_subdirectory(components/coap)
add_subdirectory(components/driver)
add_subdirectory(components/esp32)
add_subdirectory(components/ethernet)
add_subdirectory(components/freertos)
add_subdirectory(components/log)
add_subdirectory(components/lwip)
add_subdirectory(components/micro-ecc)
add_subdirectory(components/soc)
add_subdirectory(components/spi_flash)
add_subdirectory(components/tcpip_adapter)
add_subdirectory(components/xtensa-debug-module)

configure_file(sdkconfig.h.in sdkconfig.h)
