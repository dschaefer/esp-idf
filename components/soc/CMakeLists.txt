add_library(soc STATIC
	esp32/rtc_init.c)

target_include_directories(soc PUBLIC esp32/include)

target_include_directories(soc PRIVATE 
	$<TARGET_PROPERTY:esp32,INCLUDE_DIRECTORIES>
)
