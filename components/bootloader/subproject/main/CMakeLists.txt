cmake_minimum_required(VERSION 3.10)

project(bootloader)

add_definitions(
    -DBOOTLOADER_BUILD=1
)

include(${ESP_IDF}/esp-idf.cmake)

add_executable(bootloader.elf
    bootloader_start.c
    flash_qio_mode.c
)

target_include_directories(bootloader.elf PRIVATE
    $<TARGET_PROPERTY:bootloader_support,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)

target_link_libraries(bootloader.elf
    -Wl,--start-group
    bootloader_support
    log
    spi_flash
    soc
    gcc
    -Wl,--end-group
)

set_target_properties(bootloader.elf PROPERTIES LINK_FLAGS
    "-Wl,-Map=bootloader.map \
    -Wl,--gc-sections \
    -Wl,-static \
    -Wl,-EL \
    -L ${CMAKE_SOURCE_DIR} \
    -L ${ESP_IDF}/components/esp32/ld \
    -T esp32.bootloader.ld \
    -T esp32.rom.ld \
    -T esp32.rom.spiram_incompatible_fns.ld \
    -T esp32.peripherals.ld \
    -T esp32.bootloader.rom.ld \
    -u call_user_start_cpu0"
)

add_custom_command(TARGET bootloader.elf POST_BUILD
    COMMAND python ${ESP_IDF}/components/esptool_py/esptool/esptool.py
        --chip esp32 elf2image bootloader.elf
)
