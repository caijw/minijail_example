#!/usr/bin/env bash


set -e
ROOT=$(dirname $(realpath "$BASH_SOURCE"))
MINIJAIL_ROOT=${ROOT}/subprojects/minijail

cd ${MINIJAIL_ROOT}

make