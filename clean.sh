#!/usr/bin/env sh

# This file performs a clean of the build
cd buildroot

make distclean

cd ..

echo "Clean is successfully completed!!"
