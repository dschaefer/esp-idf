add_library(openssl STATIC
	library/ssl_cert.c
	library/ssl_lib.c
	library/ssl_methods.c
	library/ssl_pkey.c
	library/ssl_stack.c
	library/ssl_x509.c
	platform/ssl_pm.c
	platform/ssl_port.c
)

target_include_directories(openssl PUBLIC
	${CMAKE_BINARY_DIR}
	include
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(openssl PRIVATE
	include/internal
	include/platform
	include/openssl
	$<TARGET_PROPERTY:mbedtls,INTERFACE_INCLUDE_DIRECTORIES>
)
