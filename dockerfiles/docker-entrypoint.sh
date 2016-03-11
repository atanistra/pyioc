#!/bin/bash

set -ex

PYTHONDONTWRITEBYTECODE=True
export PYTHONDONTWRITEBYTECODE


if [ "$1" = 'pytest' ]
then

    sudo find . -iname *.pyc -delete

    if [ ! -z $PIP_PROXY ]
    then
        pip install --trusted-host $PIP_PROXY -i http://$PIP_PROXY:3141/root/pypi/+simple/ .[test]
    else
        pip install .[test]
    fi

    sudo -u executor py.test --junitxml=/src/test_${PY_VER}_output.xml ./tests

else
    exec "$@"
fi
