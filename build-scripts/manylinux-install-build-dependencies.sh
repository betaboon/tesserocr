#!/usr/bin/env bash
set -ex

# leptonica dependencies
yum install -y \
  giflib-devel \
  libjpeg-devel \
  libpng-devel \
  libtiff-devel \
  libwebp-devel \
  openjpeg2-devel \
  zlib-devel

# tesseract dependencies
yum install -y \
  cairo-devel \
  libicu-devel \
  pango-devel
