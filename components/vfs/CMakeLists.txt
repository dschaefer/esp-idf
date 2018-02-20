add_library(vfs STATIC
    vfs.c
    vfs_uart.c
)

target_include_directories(vfs PUBLIC
    include
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(vfs PRIVATE
    $<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)