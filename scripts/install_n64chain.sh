#!/bin/bash
set -eu

echo "Installing n64chain..."

if [ "$1" = "false" ]; then
    echo "Using prebuilt toolchain..."

    cd /n64chain
    tar xJf n64chain.tar.xz
    rm n64chain.tar.xz
else
    echo "Building toolchain from source..."

    rm -rf /n64chain
    cd /
    git clone https://github.com/kamshi/n64chain.git
    cd n64chain
    git checkout gcc-12

    #mkdir -p /n64chain/tools/tarballs
    #mkdir -p /n64chain/tools/stamps
    #mkdir /n64chain/tools/make-build
    #mkdir /n64chain/tools/make-source

    #wget ftp://ftp.gnu.org/gnu/make/make-4.2.1.tar.bz2 -O /n64chain/tools/tarballs/make-4.2.1.tar.bz2
    #touch /n64chain/tools/stamps/make-download

    #tar -xf /n64chain/tools/tarballs/make-4.2.1.tar.bz2 -C /n64chain/tools/make-source --strip 1
    #patch /n64chain/tools/make-source/glob/glob.c /patches/glob.patch
    #touch /n64chain/tools/stamps/make-extract

    chmod +x /n64chain/tools/build-posix64-toolchain.sh
    /n64chain/tools/build-posix64-toolchain.sh
fi
