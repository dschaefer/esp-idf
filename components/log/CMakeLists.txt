add_library(log STATIC log.c)

target_include_directories(log PUBLIC include)

target_include_directories(log PRIVATE 
	$<TARGET_PROPERTY:freertos,INCLUDE_DIRECTORIES>
)
