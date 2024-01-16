# py3ioc

Py3IoC - Inversion of Control tools for python 3

## Development setup

### Native development environment

To install dependencies run:

```bash
pip install --upgrade -e .[dev,doc,test]
```

**Important** 

The build command have to be re-run every time requirements.txt file will change. This is due
to time optimisation - for every python version all requirements are installed during image building.
Thanks to that unit tests run almost instantly.


After that you can run unit tests inside container for python versions 2.6, 2.7 3.3-3.11
by runnint command: 

