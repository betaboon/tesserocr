#!/usr/bin/env bash
set -ex

# leptonica dependencies
brew install \
  giflib \
  jpeg-turbo \
  libpng \
  libtiff \
  openjpeg \
  webp \
  zlib

# tesseract dependencies
brew install \
  pango \
  cairo \
  icu4c
