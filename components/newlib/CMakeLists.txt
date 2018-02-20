add_library(newlib STATIC
    locks.c
    reent_init.c
    syscalls.c
    syscall_table.c
    time.c
)

target_include_directories(newlib PUBLIC
    include
    platform_include
)

target_include_directories(newlib PRIVATE
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)