#!/bin/bash

echo "Cloning $1"

mkdir -p /git/tmp
cd /git/tmp
git clone $1
cd ..
cp -r ./tmp/* .
rm -rf ./tmp