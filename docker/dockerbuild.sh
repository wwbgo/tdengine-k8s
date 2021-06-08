#!/bin/bash
set -e

imageVer=2.1.2.0
ver=2.1.2.0
docker build --rm -f Dockerfile --build-arg ver=${ver} -t docker.flexem.com/library/tdengine:$imageVer .
docker push docker.flexem.com/library/tdengine:$imageVer
