add_library(sdmmc STATIC
	sdmmc_cmd.c
)

target_include_directories(sdmmc PUBLIC
	include
)

target_include_directories(sdmmc PRIVATE
	${CMAKE_BINARY_DIR}
	$<TARGET_PROPERTY:heap,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)
