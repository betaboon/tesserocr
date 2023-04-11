#!/usr/bin/env bash
set -ex

source $(dirname -- "$0")/common-install-tesseract.sh

# build leptonica
cd leptonica-${LEPTONICA_VERSION}

mkdir build
cd build
cmake \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DBUILD_SHARED_LIBS=ON \
  ..
make
make install

cd ../..

# build tesseract
cd tesseract-${TESSERACT_VERSION}

mkdir build
cd build
cmake \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DBUILD_SHARED_LIBS=ON \
  ..
make
make install

cd ../..
