#!/bin/sh

set -e

VERSION="release/1.0.1"

git clone --depth=1 --branch="${VERSION}" https://github.com/navermaps/NMapsGeometry.git

mv NMapsGeometry/framework/NMapsGeometry.xcframework NMapsGeometry.xcframework

zip -r NMapsGeometry.xcframework.zip NMapsGeometry.xcframework -x \*.DS_Store

rm -rf NMapsGeometry.xcframework

rm -rf NMapsGeometry

swift package compute-checksum NMapsGeometry.xcframework.zip
