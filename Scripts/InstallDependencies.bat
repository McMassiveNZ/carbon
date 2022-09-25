REM @echo off

if exist "../Dependencies/vcpkg" (
	pushd "../Dependencies/vcpkg"
) else (
	echo Error No vcpkg directory found
	goto exit
)

vcpkg install zlib freeimage freetype physx bullet3 libvorbis openal-soft assimp --triplet x64-windows

:exit
popd
