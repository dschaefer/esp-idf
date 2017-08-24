add_library(wpa_supplicant STATIC
	src/crypto/aes-cbc.c
	src/crypto/aes-internal.c
	src/crypto/aes-internal-dec.c
	src/crypto/aes-internal-enc.c
	src/crypto/aes-wrap.c
	src/crypto/aes-unwrap.c
	src/crypto/bignum.c
	src/crypto/crypto_internal.c
	src/crypto/crypto_internal-cipher.c
	src/crypto/crypto_internal-modexp.c
	src/crypto/crypto_internal-rsa.c
	src/crypto/des-internal.c
	src/crypto/dh_group5.c
	src/crypto/dh_groups.c
	src/crypto/md4-internal.c
	src/crypto/md5.c
	src/crypto/md5-internal.c
	src/crypto/ms_funcs.c
	src/crypto/rc4.c
	src/crypto/sha1.c
	src/crypto/sha1-internal.c
	src/crypto/sha1-pbkdf2.c
	src/crypto/sha256.c
	src/crypto/sha256-internal.c
	port/os_xtensa.c
)

target_include_directories(wpa_supplicant PUBLIC
	port/include
	include
)

target_include_directories(wpa_supplicant PRIVATE
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)
