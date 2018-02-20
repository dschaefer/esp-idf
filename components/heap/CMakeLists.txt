add_library(heap STATIC
    heap_caps_init.c
    heap_caps.c
    heap_trace.c
    multi_heap.c
)

target_include_directories(heap PUBLIC
    include
)

target_include_directories(heap PRIVATE
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)
