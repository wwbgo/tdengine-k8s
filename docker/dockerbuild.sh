#!/bin/bash
set -e

imageVer=2.4.0.0
ver=2.4.0.0
docker build --rm -f Dockerfile --build-arg ver=${ver} -t wwbgo/tdengine:$imageVer .
docker push wwbgo/tdengine:$imageVer
