add_library(nvs_flash STATIC
	src/nvs_types.cpp
	src/nvs_page.cpp
	src/nvs_item_hash_list.cpp
	src/nvs_pagemanager.cpp
	src/nvs_storage.cpp
	src/nvs_api.cpp
)

target_include_directories(nvs_flash PUBLIC
	include
)

target_include_directories(nvs_flash PRIVATE
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:spi_flash,INTERFACE_INCLUDE_DIRECTORIES>
)
