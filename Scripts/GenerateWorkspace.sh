#!bin/sh -e

if [ -d "../Build" ]; then
	rm -rf "../Build"
fi

mkdir "../Build"
pushd "../Build"
cmake -G "Xcode" .. -DCMAKE_TOOLCHAIN_FILE='../Dependencies/vcpkg/scripts/buildsystems/vcpkg.cmake'
popd