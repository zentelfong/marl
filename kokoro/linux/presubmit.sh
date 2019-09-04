#!/bin/bash

set -e # Fail on any error.
set -x # Display commands being run.

cd github/marl

git submodule update --init

mkdir build
cd build
cmake .. -DMARL_BUILD_EXAMPLES=1
make --jobs=$(nproc)

./marl-unittests

./fractal
