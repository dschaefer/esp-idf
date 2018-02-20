add_library(pthread STATIC
    pthread.c
    pthread_cond_var.c
    pthread_local_storage.c
)

target_include_directories(pthread PRIVATE
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:newlib,INTERFACE_INCLUDE_DIRECTORIES>
)