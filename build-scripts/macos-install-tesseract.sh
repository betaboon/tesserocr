#!/usr/bin/env bash
set -ex

source $(dirname -- "$0")/common-install-tesseract.sh

# build leptonica
cd leptonica-${LEPTONICA_VERSION}

mkdir build
cd build
cmake \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_OSX_DEPLOYMENT_TARGET="12.0" \
  -DCMAKE_FIND_FRAMEWORK=NEVER \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DBUILD_SHARED_LIBS=ON \
  ..
make
make install

cd ../..

# build tesseract
cd tesseract-${TESSERACT_VERSION}

export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig"

mkdir build
cd build
cmake \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_OSX_DEPLOYMENT_TARGET="12.0" \
  -DCMAKE_FIND_FRAMEWORK=NEVER \
  -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
  -DBUILD_SHARED_LIBS=ON \
  ..
make
make install

cd ../..
