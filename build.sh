#!/usr/bin/env bash

docker build . -t djbasster/patternlab-builder-image:latest
docker push djbasster/patternlab-builder-image:latest
