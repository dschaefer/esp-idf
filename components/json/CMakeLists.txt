add_library(json STATIC
	library/cJSON.c
	port/cJSON_Utils.c
)

target_include_directories(json PUBLIC
	include
)

target_include_directories(json PRIVATE
	port/include
)
