# Base images for eLife containers

## Available images

- ~[`php_7.0_cli`](https://hub.docker.com/r/elifesciences/php_7.0_cli/)~
- ~[`php_7.0_fpm`](https://hub.docker.com/r/elifesciences/php_7.0_fpm/)~
- [`php_7.1_cli`](https://hub.docker.com/r/elifesciences/php_7.1_cli/)
- [`php_7.1_fpm`](https://hub.docker.com/r/elifesciences/php_7.1_fpm/)
- [`python_3.6`](https://hub.docker.com/r/elifesciences/python_3.6/)

## Available helper images

- [`python_3.6_pipenv`](https://hub.docker.com/r/elifesciences/python_3.6_pipenv/)

## Deprecated images

- [`php_cli`](https://hub.docker.com/r/elifesciences/php_cli/)
- [`php_fpm`](https://hub.docker.com/r/elifesciences/php_fpm/)
- [`python`](https://hub.docker.com/r/elifesciences/python/)

## Basic infrastructure

- Every image has an `elife` user that should own files
- Every image has a `www-data` user that should run all processes
- Images are tested for sanity, e.g. the PHP interpreter runs without issues.

