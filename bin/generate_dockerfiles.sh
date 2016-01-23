#!/bin/bash

set -e

SCRIPT="$(realpath $0)"
SCRIPT_DIR="$(dirname $SCRIPT)"
SRC_DIR="$(dirname $SCRIPT_DIR)"

DOCKER_DIR=${SRC_DIR}/dockerfiles

PYTHON_VERSIONS=("2.7" "3.3" "3.4" "3.5")

for VER in ${PYTHON_VERSIONS[@]}
do
    cat ${DOCKER_DIR}/Dockerfile.template \
        | sed s/__VERSION__/${VER}-slim/ \
        > ${DOCKER_DIR}/Dockerfile.python_${VER}
done

for VER in ${PYTHON_VERSIONS[@]}
do
    docker build -t mrupgrade/pyioctest${VER} -f ${DOCKER_DIR}/Dockerfile.python_${VER} --no-cache ${DOCKER_DIR}
done

for VER in ${PYTHON_VERSIONS[@]}
do

    docker run --rm -it -v ${SRC_DIR}:/src mrupgrade/pyioctest${VER}
done
