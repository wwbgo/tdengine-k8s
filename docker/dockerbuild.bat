set imageVer=3.3.7.5
set ver=3.3.7.5
docker build --rm -f Dockerfile --build-arg ver=%ver% -t docker.flexem.com/library/tdengine:%imageVer% .
docker push docker.flexem.com/library/tdengine:%imageVer%
pause
