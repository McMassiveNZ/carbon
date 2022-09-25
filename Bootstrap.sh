#!/bin/sh -e

DEPENDENCIES='./Dependencies'
if [ ! -d $DEPENDENCIES ]; then
    mkdir Dependencies
fi

pushd ./Dependencies
pwd

VCPKG='./vcpkg'
if [ ! -d $VCPKG ]; then
    git clone https://github.com/Microsoft/vcpkg.git
fi

pushd ./vcpkg
./bootstrap-vcpkg.sh -disableMetrics

popd
popd

pushd Scripts
echo 'Installing dependencies'
./InstallDependencies.sh

echo 'Generating Workspace'
sh GenerateWorkspace.sh

echo 'Building Configurations'
sh Build.sh

popd

echo 'FINSHED!'