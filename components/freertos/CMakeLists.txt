add_library(freertos STATIC
    croutine.c
    event_groups.c
    FreeRTOS-openocd.c
    list.c
    port.c
    portasm.S
    queue.c
    ringbuf.c
    tasks.c
    timers.c
    xtensa_context.S
    xtensa_init.c
    xtensa_intr_asm.S
    xtensa_intr.c
    xtensa_overlay_os_hook.c
    xtensa_vector_defaults.S
    xtensa_vectors.S
)

target_include_directories(freertos PUBLIC
    include/freertos
    include
    $<TARGET_PROPERTY:heap,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(freertos PRIVATE
    $<TARGET_PROPERTY:newlib,INTERFACE_INCLUDE_DIRECTORIES>
)