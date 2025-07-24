# Base images for eLife containers

## Available images

- [`python_3.8`](https://hub.docker.com/r/elifesciences/python_3.8/tags)

### Unified PHP image

- [unified docker PHP image repository (with tags for `7.1-cli` (obsolete), `7.1-fpm` (obsolete), `7.2-cli` (obsolete), `7.2-fpm` (obsolete), `7.3-cli`, `7.3-fpm`, `7.4-cli`, `7.4-fpm`, `8.0-cli`, `8.0-fpm`, `8.1-cli`, `8.1-fpm`, `8.2-cli`, `8.2-fpm`, `8.3-cli`, `8.3-fpm`, `8.4-cli` and `8.4-fpm)`](https://github.com/elifesciences/elife-base-images/pkgs/container/php)

NOTE: there is no `latest` tag - instead, specify the php version and `-cli` or `-fpm` sufix you desire, e.g. `docker pull ghcr.io/elifesciences/php:7.4-cli`
NOTE2: pinning using sha digest is highly recommended

## Obsolete images

Do not use, no longer maintained or built.

- [`php_cli`](https://hub.docker.com/r/elifesciences/php_cli/tags)
- [`php_fpm`](https://hub.docker.com/r/elifesciences/php_fpm/tags)
- [`php_7.0_cli`](https://hub.docker.com/r/elifesciences/php_7.0_cli/tags)
- [`php_7.0_fpm`](https://hub.docker.com/r/elifesciences/php_7.0_fpm/tags)
- [`php_7.1_cli`](https://hub.docker.com/r/elifesciences/php_7.1_cli/tags)
- [`php_7.1_fpm`](https://hub.docker.com/r/elifesciences/php_7.1_fpm/tags)
- [`php_7.3_cli`](https://hub.docker.com/r/elifesciences/php_7.3_cli/tags)
- [`php_7.3_fpm`](https://hub.docker.com/r/elifesciences/php_7.3_fpm/tags)
- [`python`](https://hub.docker.com/r/elifesciences/python/tags)
- [`python_3.6`](https://hub.docker.com/r/elifesciences/python_3.6/tags)
- [`python_3.6_pipenv`](https://hub.docker.com/r/elifesciences/python_3.6_pipenv/tags)

## Basic infrastructure

- Every image has an `elife` user that should own files
- Every image has a `www-data` user that should run all processes
- Images are tested for sanity, e.g. the PHP interpreter runs without issues.
