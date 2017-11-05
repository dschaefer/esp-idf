set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER xtensa-esp32-elf-gcc.exe)
set(CMAKE_CXX_COMPILER xtensa-esp32-elf-g++.exe)
set(CMAKE_ASM_COMPILER xtensa-esp32-elf-gcc.exe)

set(CMAKE_C_FLAGS_INIT "-Og -ggdb -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-old-style-declaration")
set(CMAKE_CXX_FLAGS_INIT "-Og -ggdb -std=gnu++11 -fno-exceptions -fno-rtti -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -mlongcalls -nostdlib -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-but-set-variable -Wno-error=unused-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare")
set(CMAKE_EXE_LINKER_FLAGS_INIT ${CMAKE_EXE_LINKER_FLAGS} -nostdlib CACHE STRING "Linker Flags")
