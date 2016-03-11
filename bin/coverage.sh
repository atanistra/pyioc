#!/bin/bash

set -ex

SCRIPT="$(realpath $0)"
SCRIPT_DIR="$(dirname $SCRIPT)"
SRC_DIR="$(dirname $SCRIPT_DIR)"
CUR_DIR=`pwd`

cd ${SRC_DIR}

coverage run --branch --source pyioc -m py.test

cd ${CUR_DIR}