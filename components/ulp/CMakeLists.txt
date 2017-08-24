add_library(ulp STATIC
	ulp.c
	ulp_macro.c
)

target_include_directories(ulp PUBLIC
	include
)

target_include_directories(ulp PRIVATE
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)
