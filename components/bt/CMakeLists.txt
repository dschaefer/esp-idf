add_library(bt STATIC
	bt.c
)

target_include_directories(bt PUBLIC
	include
)

target_include_directories(bt PRIVATE
	$<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:heap,INTERFACE_INCLUDE_DIRECTORIES>
)
