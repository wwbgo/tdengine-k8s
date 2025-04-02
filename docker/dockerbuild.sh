#!/bin/bash
set -e

imageVer=3.3.6.0
ver=3.3.6.0
docker build --rm -f Dockerfile --build-arg ver=${ver} -t wwbgo/tdengine:$imageVer .
docker push wwbgo/tdengine:$imageVer
