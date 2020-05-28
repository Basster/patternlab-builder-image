FROM debian:stretch-slim

LABEL maintainer="oroessner@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
    wget curl \
    lsb-release \
    apt-transport-https \
    ca-certificates \
    bzip2; \
    curl -sL https://deb.nodesource.com/setup_10.x | bash -; \
    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg; \
    sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'; \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -; \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        php7.4-apcu \
        php7.4-common \
        php7.4-readline \
        php7.4-cli \
        php7.4-curl \
        php7.4-intl \
        php7.4-mbstring \
        php7.4-opcache \
        php7.4-json \
        php7.4-zip \
        php7.4-xsl \
        php7.4-redis \
        yarn \
        nodejs \
        git; \
  apt-get clean; \
  apt-get autoremove; \
  rm -rf /var/lib/apt/lists/*;

ENV HOME=/home

# composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bash" ]
