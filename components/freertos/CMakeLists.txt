add_library(freertos STATIC
	list.c)

target_include_directories(freertos PUBLIC
	${CMAKE_BINARY_DIR}
	include
	include/freertos
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)
