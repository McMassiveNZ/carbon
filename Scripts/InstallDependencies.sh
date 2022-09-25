#!/bin/sh -e

if [ -d "../Dependencies/vcpkg" ]; then
	pushd "../Dependencies/vcpkg"
    ./vcpkg install zlib freeimage freetype physx bullet3 libvorbis openal-soft assimp --triplet x64-osx
else
	echo 'Error No vcpkg directory found'
fi

popd