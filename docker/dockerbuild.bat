set imageVer=3.3.6.0
set ver=3.3.6.0
docker build --rm -f Dockerfile --build-arg ver=%ver% -t wwbgo/tdengine:%imageVer% .
docker push wwbgo/tdengine:%imageVer%
pause
