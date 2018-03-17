set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR esp32)

set(ESP_IDF $ENV{ESP_HOME}/esp-idf)

set(CMAKE_C_COMPILER $ENV{ESP_HOME}/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc.exe -nostdlib)
set(CMAKE_CXX_COMPILER $ENV{ESP_HOME}/xtensa-esp32-elf/bin/xtensa-esp32-elf-g++.exe -nostdlib)
