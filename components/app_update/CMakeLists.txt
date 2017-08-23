add_library(app_update STATIC
	esp_ota_ops.c
)

target_include_directories(app_update PUBLIC
	include
)

target_include_directories(app_update PRIVATE 
	$<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:spi_flash,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:bootloader_support,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)
