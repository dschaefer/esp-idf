add_library(bootloader_support STATIC
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

target_include_directories(bootloader_support PUBLIC include)

target_include_directories(bootloader_support PRIVATE 
	include_priv
	$<TARGET_PROPERTY:esp32,INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:soc,INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:micro-ecc,INCLUDE_DIRECTORIES>
)
