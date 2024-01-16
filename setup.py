# coding=utf-8

from setuptools import setup

this_directory = path.abspath(path.dirname(__file__))
with open('docs/source/index.rst ', encoding='utf-8') as f:
    long_description = f.read()

setup(
    name='py3ioc',
    version='1.0.0',
    packages=['py3ioc'],
    url='https://github.com/atanistra/pyioc',
    license='MIT',
    author='Jakub (Mr. UPGrade) Czapliński / atanistra',
    author_email='pypi@serwis.atamail.eu',
    description='Python 3 IoC tools.',
    long_description=long_description,
    long_description_content_type='text/x-rst',
    install_requires=[
        'six>=1.9.0',
        'future>=0.15.2',
        'enum34>=1.1.1',
    ],
    extras_require={
        'test': [
            'pytest>=2.8.0',
            'mock>=1.3.0',
            'coverage>=4.0.0'
        ],
        'dev': [
            'ipython',
            'flake8'
        ],
        'doc': [
            'sphinx'
        ]
    },
    classifiers=[
        "Programming Language :: Python :: 3.3",
        "Programming Language :: Python :: 3.4",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
        "Programming Language :: Python :: 3.11",
        "Programming Language :: Python :: 3.12",
    ]
)
