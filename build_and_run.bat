@echo off
REM Build and Run script for GFX Framework
REM This script builds the project and runs the executable

echo === GFX Framework Build and Run Script ===
echo.

REM Check if we're in the project root
if not exist "CMakeLists.txt" (
    echo Error: CMakeLists.txt not found. Please run this script from the project root.
    exit /b 1
)

REM Create build directory if it doesn't exist
if not exist "build" (
    echo Creating build directory...
    mkdir build
)

REM Navigate to build directory
cd build

REM Generate CMake files
echo Generating CMake files...
cmake ..

REM Build the project
echo.
echo Building project...
cmake --build .

REM Run the executable
echo.
echo === Running GFXFramework ===
if exist "bin\Debug\GFXFramework.exe" (
    .\bin\Debug\GFXFramework.exe
) else (
    echo Error: Executable not found!
    exit /b 1
)
