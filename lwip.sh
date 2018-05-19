#!/bin/sh

set -e

export NEWLIB_PATH="${PWD}/output/x86_64-pc-baremetal"

./scripts/update-submodule.sh "src/lwip"

cd "src/lwip" && make
