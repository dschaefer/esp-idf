add_library(bootloader_support STATIC
    src/bootloader_clock.c
    src/bootloader_flash.c
    src/bootloader_random.c
    src/bootloader_sha.c
    src/efuse.c
    src/esp_image_format.c
    src/flash_encrypt.c
    src/flash_partitions.c
    src/secure_boot_signatures.c
    src/secure_boot.c
)

target_include_directories(bootloader_support PUBLIC
    include
    include_priv
    $<TARGET_PROPERTY:spi_flash,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(bootloader_support PRIVATE
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:micro-ecc,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:mbedtls,INTERFACE_INCLUDE_DIRECTORIES>
)
