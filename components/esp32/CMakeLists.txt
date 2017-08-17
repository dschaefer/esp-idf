add_library(esp32 STATIC
	panic.c)

target_include_directories(esp32 PUBLIC include)

target_include_directories(esp32 PRIVATE 
	$<TARGET_PROPERTY:soc,INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:freertos,INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:spi_flash,INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:app_trace,INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:driver,INCLUDE_DIRECTORIES>
)
