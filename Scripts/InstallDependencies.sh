#!/bin/sh -e

ARG=$1
TRIPLET=''
echo $ARG
if [ $ARG = OSX ]; then
	TRIPLET=x64-osx
elif [ $ARG = Linux ]; then
	TRIPLET=x64-linux
else
	echo 'Invalid Platform, please pass OSX or Linux to Script'
fi

if [ -d "../Dependencies/vcpkg" ]; then
	cd "../Dependencies/vcpkg"
    ./vcpkg install zlib freeimage freetype physx bullet3 libvorbis assimp openal-soft --triplet $TRIPLET
	cd ..
else
	echo 'Error No vcpkg directory found'
fi