add_library(coap STATIC
	libcoap/src/address.c
	libcoap/src/async.c
	libcoap/src/block.c
	libcoap/src/coap_time.c
	libcoap/src/debug.c
	libcoap/src/encode.c
	libcoap/src/hashkey.c
	libcoap/src/mem.c
	libcoap/src/net.c
	libcoap/src/option.c
	libcoap/src/pdu.c
	libcoap/src/resource.c
	libcoap/src/str.c
	libcoap/src/subscribe.c
	libcoap/src/uri.c
	port/coap_io_socket.c
)

target_include_directories(coap PUBLIC
	libcoap/include
	libcoap/include/coap
	port/include
	port/include/coap
	$<TARGET_PROPERTY:lwip,INTERFACE_INCLUDE_DIRECTORIES>	
)

target_compile_definitions(coap PUBLIC
	WITH_POSIX
)
