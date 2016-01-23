#!/bin/bash

set -e

find /src/ -iname *.pyc

pip install -e /src/[test]

exec py.test --junitxml=/src/test_${PY_VER}_output.xml /src/tests

