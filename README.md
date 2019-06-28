# patternlab-builder-image

[![Docker Build Status](https://img.shields.io/docker/build/djbasster/patternlab-builder-image.svg)](https://hub.docker.com/r/djbasster/patternlab-builder-image)

A docker image which includes:

- [PHP 7.3](http://php.net/) with following extensions
  - apcu
  - readline
  - sqlite
  - curl
  - intl
  - mbstring
  - opcache
  - json
  - zip
  - xsl
- [nodejs 10.x](https://nodejs.org)
- [yarn](https://yarnpkg.com)
- [composer](https://getcomposer.org/)

It also contains `curl`, `wget`, `gnupg2` and `git` for reasons.

You can find the image on the official [docker registry](https://hub.docker.com/r/djbasster/patternlab-builder-image)

```bash
docker pull djbasster/patternlab-builder-image
```
