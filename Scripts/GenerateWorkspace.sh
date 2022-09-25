#!/bin/sh -e

ARG=$1
WORKSPACE=''
if [ $ARG = OSX ]; then
	WORKSPACE='-G Xcode'
fi

if [ -d "../Build" ]; then
	rm -rf "../Build"
fi

mkdir "../Build"
cd "../Build"
cmake $WORKSPACE .. -DCMAKE_TOOLCHAIN_FILE='../Dependencies/vcpkg/scripts/buildsystems/vcpkg.cmake'
cd ..