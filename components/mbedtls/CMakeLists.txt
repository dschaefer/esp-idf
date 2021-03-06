add_library(mbedtls STATIC
    library/aes.c
    library/aesni.c
    library/arc4.c
    library/asn1parse.c
    library/asn1write.c
    library/base64.c
    library/bignum.c
    library/blowfish.c
    library/camellia.c
    library/ccm.c
    library/certs.c
    library/cipher_wrap.c
    library/cipher.c
    library/cmac.c
    library/ctr_drbg.c
    library/debug.c
    library/des.c
    library/dhm.c
    library/ecdh.c
    library/ecdsa.c
    library/ecjpake.c
    library/ecp_curves.c
    library/ecp.c
    library/entropy_poll.c
    library/entropy.c
    library/error.c
    library/gcm.c
    library/havege.c
    library/hmac_drbg.c
    library/md_wrap.c
    library/md.c
    library/md2.c
    library/md4.c
    library/md5.c
    library/memory_buffer_alloc.c
    library/oid.c
    library/padlock.c
    library/pem.c
    library/pk_wrap.c
    library/pk.c
    library/pkcs11.c
    library/pkcs12.c
    library/pkcs5.c
    library/pkparse.c
    library/pkwrite.c
    library/platform.c
    library/ripemd160.c
    library/rsa.c
    library/sha1.c
    library/sha256.c
    library/sha512.c
    library/ssl_cache.c
    library/ssl_ciphersuites.c
    library/ssl_cli.c
    library/ssl_cookie.c
    library/ssl_srv.c
    library/ssl_ticket.c
    library/ssl_tls.c
    library/threading.c
    library/timing.c
    library/version_features.c
    library/version.c
    library/x509_create.c
    library/x509_crl.c
    library/x509_crt.c
    library/x509_csr.c
    library/x509.c
    library/x509write_crt.c
    library/x509write_csr.c
    library/xtea.c
    port/esp_bignum.c
    port/esp_hardware.c
    port/esp_sha1.c
    port/esp_sha256.c
    port/esp_sha512.c
    port/mbedtls_debug.c
    port/net_sockets.c
)

target_include_directories(mbedtls PUBLIC
    include
    port/include
)

target_include_directories(mbedtls PRIVATE
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:ethernet,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:lwip,INTERFACE_INCLUDE_DIRECTORIES>
)

target_compile_definitions(mbedtls PRIVATE
    -DMBEDTLS_CONFIG_FILE="mbedtls/esp_config.h"
)

target_compile_options(mbedtls PRIVATE
    -Wno-old-style-declaration -Wno-address
)