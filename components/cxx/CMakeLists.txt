add_library(cxx STATIC
	cxx_guards.cpp
)

target_include_directories(cxx PRIVATE
	$<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>	
)
