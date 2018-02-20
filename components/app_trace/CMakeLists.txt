add_library(app_trace STATIC
    app_trace_util.c
    app_trace.c
    host_file_io.c
    gcov/gcov_rtio.c
)

target_include_directories(app_trace PUBLIC
    include
)

target_include_directories(app_trace PRIVATE
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:xtensa-debug-module,INTERFACE_INCLUDE_DIRECTORIES>
)
