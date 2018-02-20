set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)

enable_language(ASM)

set(CMAKE_C_FLAGS
    "-ffunction-sections -fdata-sections -fstrict-volatile-bitfields \
    -mlongcalls \
    -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable \
    -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter \
    -Wno-sign-compare -Wno-old-style-declaration"
)

set(CMAKE_CXX_FLAGS
    "-ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fno-exceptions \
    -mlongcalls \
    -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable \
    -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter \
    -Wno-sign-compare"
)

include_directories(
    ${CMAKE_BINARY_DIR}/include
)

add_definitions(
    -DESP_PLATFORM
    -DIDF_VER=\"v3.1-dev-388-gc3bec5b\"
)

add_subdirectory(${ESP_IDF}/components components)

set(ESP32_LIBS
    app_update
    driver
    esp32
    freertos
    heap
    log
    newlib
    pthread
    soc
    spi_flash
    vfs
    ${ESP_IDF}/components/newlib/lib/libc.a
    ${ESP_IDF}/components/newlib/lib/libm.a
    ${ESP_IDF}/components/esp32/libhal.a
)

function(target_esp32 name)
    string(REPLACE ".elf" ".bin" bin ${name})
    string(REPLACE ".elf" ".map" map ${name})
    
    set_target_properties(${name} PROPERTIES LINK_FLAGS
        "-Wl,-Map=${map} \
        -Wl,--gc-sections \
        -Wl,-static \
        -Wl,-EL \
        -T ${CMAKE_BINARY_DIR}/ld/esp32.ld \
        -L ${ESP_IDF}/components/esp32/ld \
        -T esp32.common.ld \
        -T esp32.rom.ld \
        -T esp32.peripherals.ld \
        -T esp32.rom.spiram_incompatible_fns.ld \
        -u call_user_start_cpu0 \
        -u __cxa_guard_dummy \
        -u __cxx_fatal_exception \
        -u ld_include_panic_highint_hdl"
    )

    add_custom_command(TARGET ${name} POST_BUILD
        BYPRODUCTS ${bin}
        COMMAND python ${ESP_IDF}/components/esptool_py/esptool/esptool.py
            --chip esp32 elf2image ${name}
    )

    add_custom_target(partitions
        COMMAND python ${ESP_IDF}/components/partition_table/gen_esp32part.py
            -q ${ESP_IDF}/components/partition_table/partitions_singleapp.csv
            partitions_singleapp.bin
    )

    add_custom_target(flash
        COMMAND python ${ESP_IDF}/components/esptool_py/esptool/esptool.py
            --chip esp32
            --port COM7
            --baud 115200
            --before default_reset
            --after hard_reset
            write_flash
            -z
            --flash_mode dio
            --flash_freq 40m
            --flash_size detect
            0x1000 bootloader/bootloader.bin
            0x10000 ${bin}
            0x8000 partitions_singleapp.bin
    )
endfunction()
