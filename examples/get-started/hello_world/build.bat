set ESP_ROOT=%~dp0\..\..\..\..
set ESP_HOME=%ESP_ROOT:\=/%
set ESP_IDF=%ESP_HOME%/esp-idf

rmdir /s /q build
mkdir build
cd build

mkdir bootloader
cd bootloader
cmake -G Ninja -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_TOOLCHAIN_FILE=%ESP_IDF%\toolchain.cmake %ESP_IDF%\components\bootloader\subproject\main
ninja bootloader.bin

cd ..
cmake -G Ninja -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_TOOLCHAIN_FILE=%ESP_IDF%\toolchain.cmake ..\main
ninja hello_world.bin
ninja partitions

cd ..
