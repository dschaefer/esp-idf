add_library(nvs_flash STATIC
    src/nvs_api.cpp
    src/nvs_item_hash_list.cpp
    src/nvs_page.cpp
    src/nvs_pagemanager.cpp
    src/nvs_storage.cpp
    src/nvs_types.cpp
)

target_include_directories(nvs_flash PUBLIC
    include
)