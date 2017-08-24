add_library(jsmn STATIC
	src//jsmn.c
)

target_include_directories(jsmn PUBLIC
	include
)
