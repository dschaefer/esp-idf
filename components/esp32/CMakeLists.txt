add_library(esp32 STATIC
	brownout.c
	cache_err_int.c
	clk.c
	core_dump.c
	cpu_start.c
	crosscore_int.c
	deep_sleep.c
	dport_access.c
	event_default_handlers.c
	event_loop.c
	freertos_hooks.c
	gdbstub.c
	hw_random.c
	int_wdt.c
	intr_alloc.c
	ipc.c
	panic.c
	lib_printf.c
	phy_init.c
	restore.c
	system_api.c
	task_wdt.c
	hwcrypto/sha.c
	hwcrypto/aes.c
	dport_panic_highint_hdl.S
#	esp32_out.ld
)

target_include_directories(esp32 PUBLIC
	include
	$<TARGET_PROPERTY:driver,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:freertos,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:soc,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:tcpip_adapter,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(esp32 PRIVATE
	include/xtensa 
	$<TARGET_PROPERTY:app_trace,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:ethernet,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:heap,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:newlib,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:nvs_flash,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:mbedtls,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:spi_flash,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:wpa_supplicant,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:vfs,INTERFACE_INCLUDE_DIRECTORIES>
)
