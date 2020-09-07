#!/bin/bash
set -e

ver=2.0.3.0
docker build --rm -f Dockerfile -t docker.flexem.com/library/tdengine:$ver .
docker push docker.flexem.com/library/tdengine:$ver
