# coding=utf-8
from setuptools import setup

setup(
        name='pyioc',
        version='0.1.4',
        packages=['pyioc'],
        url='https://github.com/MrUPGrade/pyioc',
        license='MIT',
        author='Jakub (Mr. UPGrade) Czapliński',
        author_email='sirupgrade@gmail.com',
        description='Python IoC tools.',
        install_requires=[
            'six>=1.9.0',
            'future>=0.15.2',
            'enum34>=1.1.1',
            'funcsigs>=0.4'
        ],
        test_suite='tests',
        extras_require={
            'test': [
                'pytest>=2.7.3',
                'mock>=1.0.1',
                'coverage>=4.0.0'
            ]
        },
        classifiers=[
            "Programming Language :: Python :: 2",
            "Programming Language :: Python :: 2.6",
            "Programming Language :: Python :: 2.7",
            "Programming Language :: Python :: 3",
            "Programming Language :: Python :: 3.3",
            "Programming Language :: Python :: 3.4",
            "Programming Language :: Python :: 3.5"
        ]
)
