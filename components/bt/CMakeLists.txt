add_library(bt STATIC
    bt.c
)

target_include_directories(bt PUBLIC
    include
)

target_include_directories(bt PRIVATE
    $<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:heap,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)