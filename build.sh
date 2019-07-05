#!/usr/bin/env bash

docker build . -t djbasster/patternlab-builder-image:chromium
docker push djbasster/patternlab-builder-image:chromium
