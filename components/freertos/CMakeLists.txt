add_library(freertos STATIC
	list.c)

target_include_directories(freertos PUBLIC include include/freertos ${CMAKE_BINARY_DIR})

target_include_directories(freertos PRIVATE 
	$<TARGET_PROPERTY:esp32,INCLUDE_DIRECTORIES>
)
