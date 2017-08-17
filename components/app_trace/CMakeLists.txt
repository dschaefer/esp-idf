add_library(app_trace STATIC
	app_trace.c
)

target_include_directories(app_trace PUBLIC include)

target_include_directories(app_trace PRIVATE 
	$<TARGET_PROPERTY:soc,INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:xtensa-debug-module,INCLUDE_DIRECTORIES>
)
