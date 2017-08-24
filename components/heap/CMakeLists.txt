add_library(heap STATIC
	multi_heap.c
	heap_caps_init.c
	heap_caps.c
)

target_include_directories(heap PUBLIC
	include
)

target_include_directories(heap PRIVATE
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:soc,INTERFACE_INCLUDE_DIRECTORIES>
)
