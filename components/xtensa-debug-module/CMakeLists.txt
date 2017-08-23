add_library(xtensa-debug-module STATIC
	eri.c
)

target_include_directories(xtensa-debug-module PUBLIC
	include
)
