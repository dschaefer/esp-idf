add_library(ethernet STATIC
	emac_dev.c
	emac_main.c
	eth_phy/phy_common.c
	eth_phy/phy_lan8720.c
	eth_phy/phy_tlk110.c
)

target_include_directories(ethernet PUBLIC
	include
)

target_include_directories(ethernet PRIVATE
	$<TARGET_PROPERTY:esp32,INTERFACE_INCLUDE_DIRECTORIES>
)