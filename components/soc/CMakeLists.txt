add_library(soc STATIC
	esp32/cpu_util.c
	esp32/rtc_pm.c
	esp32/rtc_time.c
	esp32/rtc_init.c
	esp32/rtc_sleep.c
	esp32/rtc_clk.c
	esp32/rtc_init.c
	esp32/soc_memory_layout.c
)

target_include_directories(soc PUBLIC
	esp32/include
	include
	$<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(soc PRIVATE 
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:heap,INTERFACE_INCLUDE_DIRECTORIES>
)
