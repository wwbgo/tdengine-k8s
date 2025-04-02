#!/bin/bash
set -e

ver=3.3.6.0
docker build --rm -f Dockerfile.base --build-arg ver=${ver} -t wwbgo/tdengine:base-$ver .
docker push wwbgo/tdengine:base-$ver
