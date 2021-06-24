#!/bin/bash
set -e

imageVer=2.1.3.0
ver=2.1.3.0
docker build --rm -f Dockerfile --build-arg ver=${ver} -t wwbgo/tdengine:$imageVer .
docker push wwbgo/tdengine:$imageVer
