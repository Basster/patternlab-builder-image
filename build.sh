#!/usr/bin/env bash

docker build . -t djbasster/patternlab-builder-image:php7.4
docker push djbasster/patternlab-builder-image:php7.4
