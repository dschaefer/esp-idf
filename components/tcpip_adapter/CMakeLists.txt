add_library(tcpip_adapter STATIC
    tcpip_adapter_lwip.c
)

target_include_directories(tcpip_adapter PUBLIC
    include
    $<TARGET_PROPERTY:lwip,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(tcpip_adapter PRIVATE
    $<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)