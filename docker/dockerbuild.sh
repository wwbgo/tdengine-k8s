#!/bin/bash
set -e

imageVer=3.2.1.0
ver=3.2.1.0
docker build --rm -f Dockerfile --build-arg ver=${ver} -t wwbgo/tdengine:$imageVer .
docker push wwbgo/tdengine:$imageVer
