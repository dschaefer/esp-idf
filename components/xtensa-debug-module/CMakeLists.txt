add_library(xtensa-debug-module STATIC
	eri.c
	trax.c
)

target_include_directories(xtensa-debug-module PUBLIC
	include
)

target_include_directories(xtensa-debug-module PRIVATE
	$<TARGET_PROPERTY:soc,INTERFACE_INCLUDE_DIRECTORIES>
)
