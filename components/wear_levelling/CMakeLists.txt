add_library(wear_levelling STATIC
	Partition.cpp
	SPI_Flash.cpp
	WL_Flash.cpp
	crc32.cpp
	wear_levelling.cpp
)

target_include_directories(wear_levelling PUBLIC
	include
	$<TARGET_PROPERTY:spi_flash,INTERFACE_INCLUDE_DIRECTORIES>
)

target_include_directories(wear_levelling PRIVATE
	private_include
	$<TARGET_PROPERTY:log,INTERFACE_INCLUDE_DIRECTORIES>
)
