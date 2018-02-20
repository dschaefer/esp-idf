add_library(lwip STATIC
    api/api_lib.c
    api/api_msg.c
    api/err.c
    api/netbuf.c
    api/netdb.c
    api/netifapi.c
    api/pppapi.c
    api/sockets.c
    api/tcpip.c
    apps/dhcpserver.c
    apps/ping/esp_ping.c
    apps/ping/ping.c
    apps/sntp/sntp.c
    core/def.c
    core/dns.c
    core/inet_chksum.c
    core/init.c
    core/ip.c
    core/mem.c
    core/memp.c
    core/netif.c
    core/pbuf.c
    core/raw.c
    core/stats.c
    core/sys.c
    core/tcp.c
    core/tcp_in.c
    core/tcp_out.c
    core/timers.c
    core/udp.c
    core/ipv4/autoip.c
    core/ipv4/dhcp.c
    core/ipv4/icmp.c
    core/ipv4/igmp.c
    core/ipv4/ip_frag.c
    core/ipv4/ip4.c
    core/ipv4/ip4_addr.c
    core/ipv6/dhcp6.c
    core/ipv6/ethip6.c
    core/ipv6/icmp6.c
    core/ipv6/inet6.c
    core/ipv6/ip6.c
    core/ipv6/ip6_frag.c
    core/ipv6/ip6_addr.c
    core/ipv6/mld6.c
    core/ipv6/nd6.c
    netif/etharp.c
    netif/ethernet.c
    netif/ethernetif.c
    netif/lowpan6.c
    netif/slipif.c
    port/debug/lwip_debug.c
    port/freertos/sys_arch.c
    port/netif/ethernetif.c
    port/netif/wlanif.c
    port/vfs_lwip.c
)

target_include_directories(lwip PUBLIC
    include/lwip
    include/lwip/port
    include/lwip/posix
    $<TARGET_PROPERTY:vfs,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(lwip PRIVATE
    $<TARGET_PROPERTY:ethernet,INTERFACE_INCLUDE_DIRECTORIES>
    $<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)

target_compile_options(lwip PRIVATE
    -Wno-old-style-declaration -Wno-address
)