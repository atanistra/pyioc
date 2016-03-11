#!/bin/bash

set -e

SCRIPT="$(realpath $0)"
SCRIPT_DIR="$(dirname $SCRIPT)"
SRC_DIR="$(dirname $SCRIPT_DIR)"

DOCKER_DIR=${SRC_DIR}/dockerfiles
PYTHON_VERSIONS=("2.6" "2.7" "3.3" "3.4" "3.5")

PKG_NAME="ulog"

generate_docker_files() {
    for VER in ${PYTHON_VERSIONS[@]}
    do
        cat ${DOCKER_DIR}/Dockerfile.template \
            | sed s/__VERSION__/${VER}/ \
            | sed s/__UID__/`id -u`/ \
            | sed s/__GID__/`id -g`/ \
            > ${DOCKER_DIR}/Dockerfile.python_${VER}
    done
}

build_docker_images() {
    for VER in ${PYTHON_VERSIONS[@]}
    do
        docker build -t mrupgrade/${PKG_NAME}test${VER} -f ${DOCKER_DIR}/Dockerfile.python_${VER} ${DOCKER_DIR}
    done
}

run_tests() {
    for VER in ${PYTHON_VERSIONS[@]}
    do
        cd ${SRC_DIR}
        docker run -it -e "PY_VER=${VER}" -v ${SRC_DIR}:/src mrupgrade/${PKG_NAME}test${VER} pytest
    done
}

if [ -z $1 ]
then
    echo "usage: $0 gen|build|test|cov"
elif [ "$1" = 'gen' ]
then
    generate_docker_files
elif [ "$1" = 'build' ]
then
    build_docker_images
elif [ "$1" = 'test' ]
then
    run_tests
fi
