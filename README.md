# py3ioc

Py3IoC - Inversion of Control tools for python 3

## Development setup

### Native development environment

To install dependencies run:

```bash
pip install --upgrade -e '.[dev,doc,test]'
```

> **Note**
> Quote the argument (`'.[dev,doc,test]'`). Shells such as zsh treat the
> unquoted `[...]` as a glob pattern and fail with `no matches found`.

After that you can run the unit tests with:

```bash
bin/run_tests.sh
```
