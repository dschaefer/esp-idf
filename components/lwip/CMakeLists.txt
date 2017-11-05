add_library(lwip STATIC
	api/pppapi.c
	api/netdb.c
	api/api_lib.c
	api/netifapi.c
	api/tcpip.c
	api/netbuf.c
	api/err.c
	api/api_msg.c
	api/sockets.c
	apps/dhcpserver.c
	apps/sntp/sntp.c
	apps/ping/ping.c
	apps/ping/esp_ping.c
	core/stats.c
	core/mem.c
	core/init.c
	core/memp.c
	core/tcp.c
	core/dns.c
	core/ip.c
	core/pbuf.c
	core/raw.c
	core/tcp_in.c
	core/def.c
	core/netif.c
	core/sys.c
	core/timers.c
	core/inet_chksum.c
	core/udp.c
	core/tcp_out.c
	core/ipv4/ip_frag.c
	core/ipv4/dhcp.c
	core/ipv4/ip4_addr.c
	core/ipv4/igmp.c
	core/ipv4/ip4.c
	core/ipv4/autoip.c
	core/ipv4/icmp.c
	core/ipv6/ip6_frag.c
	core/ipv6/dhcp6.c
	core/ipv6/inet6.c
	core/ipv6/ip6_addr.c
	core/ipv6/ip6.c
	core/ipv6/nd6.c
	core/ipv6/mld6.c
	core/ipv6/ethip6.c
	core/ipv6/icmp6.c
	netif/slipif.c
	netif/etharp.c
	netif/ethernet.c
	netif/lowpan6.c
	netif/ethernetif.c
	port/freertos/sys_arch.c
	port/netif/wlanif.c
	port/netif/ethernetif.c
	port/debug/lwip_debug.c
)

target_include_directories(lwip PUBLIC
	include/lwip
	include/lwip/port
	include/lwip/posix
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:vfs,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(lwip PRIVATE
	apps/ping
	$<TARGET_PROPERTY:ethernet,INTERFACE_INCLUDE_DIRECTORIES>
)

target_compile_options(lwip PRIVATE
	-Wno-address
)
