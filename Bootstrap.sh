#!/bin/sh -e

DEPENDENCIES='./Dependencies'
if [ ! -d $DEPENDENCIES ]; then
    mkdir Dependencies
fi

cd $DEPENDENCIES

VCPKG='./vcpkg'
if [ ! -d $VCPKG ]; then
    git clone https://github.com/Microsoft/vcpkg.git
fi

cd $VCPKG
./bootstrap-vcpkg.sh -disableMetrics

cd ../..

cd ./Scripts
echo 'Installing dependencies'
./InstallDependencies.sh $1

echo 'Generating Workspace'
./GenerateWorkspace.sh $1

echo 'Building Configurations'
./Build.sh

cd ..

echo 'FINSHED!'