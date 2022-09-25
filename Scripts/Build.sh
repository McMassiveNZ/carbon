#!/bin/sh -e

if [ -d '../Build' ]; then
    cd '../Build'
    cmake --build .
    cd ..
else
    echo 'Build Directory Missing'
fi