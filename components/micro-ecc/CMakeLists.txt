add_library(micro-ecc STATIC
	micro-ecc/uECC.c
)

target_include_directories(micro-ecc PUBLIC micro-ecc)
