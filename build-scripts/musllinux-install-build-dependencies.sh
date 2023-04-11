#!/usr/bin/env bash
set -ex

# leptonica dependencies
apk add \
  giflib-dev\
  libjpeg-turbo-dev\
  libpng-dev\
  libwebp-dev\
  openjpeg-dev\
  openjpeg-tools\
  tiff-dev\
  zlib-dev

# tesseract dependencies
apk add \
  cairo-dev \
  icu-dev \
  pango-dev
