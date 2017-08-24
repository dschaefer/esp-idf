add_library(mdns STATIC
	mdns.c
)

target_include_directories(mdns PUBLIC
	include
	$<TARGET_PROPERTY:tcpip_adapter,INTERFACE_INCLUDE_DIRECTORIES>
)
