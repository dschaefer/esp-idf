add_library(log STATIC log.c)

target_include_directories(log PUBLIC
	include
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(log PRIVATE 
	$<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>
)
