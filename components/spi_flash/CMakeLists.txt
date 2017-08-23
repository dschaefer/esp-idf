add_library(spi_flash STATIC
	spi_flash_rom_patch.c
)

target_include_directories(spi_flash PUBLIC
	include
)

target_include_directories(spi_flash PRIVATE 
	$<TARGET_PROPERTY:bootloader_support,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)
