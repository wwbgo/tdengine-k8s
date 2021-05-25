#!/bin/bash
set -e

ver=2.1.1.0
docker build --rm -f Dockerfile.base --build-arg ver=${ver} -t docker.flexem.com/library/tdengine-base:$ver .
docker push docker.flexem.com/library/tdengine-base:$ver
