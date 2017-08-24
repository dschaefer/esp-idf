add_library(driver STATIC
	i2s.c
	gpio.c
	i2c.c
	ledc.c
	mcpwm.c
	pcnt.c
	periph_ctrl.c
	rmt.c
	rtc_module.c
	sdmmc_host.c
	sdmmc_transaction.c
	sdspi_crc.c
	sdspi_host.c
	sdspi_transaction.c
	sigmadelta.c
	spi_common.c
	spi_master.c
	spi_slave.c
	timer.c
	uart.c
)

target_include_directories(driver PUBLIC
	include
)

target_include_directories(driver PRIVATE
	include/driver
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
	$<TARGET_PROPERTY:heap,INTERFACE_INCLUDE_DIRECTORIES>
)
