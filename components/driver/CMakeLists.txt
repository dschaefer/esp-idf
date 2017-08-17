add_library(driver STATIC
	gpio.c
)

target_include_directories(driver PUBLIC include)

target_include_directories(driver PRIVATE 
	$<TARGET_PROPERTY:esp32,INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:log,INCLUDE_DIRECTORIES>
)
