add_library(vfs STATIC
	vfs_uart.c
	vfs.c
)

target_include_directories(vfs PUBLIC
	include
)

target_include_directories(vfs PRIVATE
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:heap,INTERFACE_INCLUDE_DIRECTORIES>
)
