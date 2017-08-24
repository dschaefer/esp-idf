add_library(fatfs STATIC
	src/diskio.c
	src/diskio_sdmmc.c
	src/diskio_spiflash.c
	src/ff.c
	src/option/syscall.c
	src/option/unicode.c
	src/vfs_fat_sdmmc.c
	src/vfs_fat_spiflash.c
	src/vfs_fat.c
)

target_include_directories(fatfs PRIVATE
	${CMAKE_BINARY_DIR}
	$<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:newlib,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:sdmmc,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:vfs,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:wear_levelling,INTERFACE_INCLUDE_DIRECTORIES>
)
