#!/bin/bash
set -e

imageVer=3.3.7.5
ver=3.3.7.5
docker build --rm -f Dockerfile --build-arg ver=${ver} -t wwbgo/tdengine:$imageVer .
docker push wwbgo/tdengine:$imageVer
