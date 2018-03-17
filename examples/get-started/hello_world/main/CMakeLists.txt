cmake_minimum_required(VERSION 3.10)

project(hello_world)

include(${ESP_IDF}/esp-idf.cmake)

add_executable(hello_world.elf
    hello_world_main.c
)

target_esp32(hello_world.elf)

target_include_directories(hello_world.elf PRIVATE
    $<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:spi_flash,INTERFACE_INCLUDE_DIRECTORIES>
)

target_link_libraries(hello_world.elf
    -Wl,--start-group
    ${ESP32_LIBS}
    -Wl,--end-group
)
