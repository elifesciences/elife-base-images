ARG BASE_IMAGE

# Shared layers
FROM ${BASE_IMAGE} as base

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

COPY scripts/ /root/scripts
RUN /root/scripts/setup-users-paths.sh
ENV PATH=/srv/bin:${PATH}

COPY --chown=elife:elife utils/ /srv/bin/

COPY config/php-7.1-elife.ini ${PHP_INI_DIR}/conf.d/elife.ini
COPY config/php-ext-opcache.ini ${PHP_INI_DIR}/conf.d/ext-opcache.ini
# Override for IPv4 Only FPM
COPY config/zz-docker.conf /usr/local/etc/php-fpm.d/zz-docker.conf


# CLI target
FROM base as cli

COPY config/php-7.1-elife-cli.ini ${PHP_INI_DIR}/conf.d/elife-cli.ini
USER www-data


# FPM target
FROM base as fpm

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    libfcgi-bin \
    && rm -rf /var/lib/apt/lists/*

COPY --chown=elife:elife ping.php /var/www/html/
COPY config/php-7.1-elife-fpm.ini ${PHP_INI_DIR}/conf.d/elife-fpm.ini
USER www-data
