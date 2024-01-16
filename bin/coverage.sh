#!/bin/bash

coverage run --branch --source py3ioc -m pytest
coverage html
