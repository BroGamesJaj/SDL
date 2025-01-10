set BUILD_DIR=sdl_build
set CONFIG=Debug

if not exist %BUILD_DIR% (
    mkdir %BUILD_DIR%
)

cd %BUILD_DIR%

cmake -G "Visual Studio 17 2022" -A x64 -DCMAKE_BUILD_TYPE=Debug ../

cmake --build . --config %CONFIG%

pause