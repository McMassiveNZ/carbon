@echo off

if exist "../Build" (
	rmdir /s/q "../Build"
)

mkdir "../Build"
pushd "../Build"
cmake -G "Visual Studio 17 2022" .. -DCMAKE_TOOLCHAIN_FILE=..\Dependencies\vcpkg\scripts\buildsystems\vcpkg.cmake
popd
