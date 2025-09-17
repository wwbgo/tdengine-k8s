set ver=3.3.7.5
docker build --rm -f Dockerfile.base --build-arg ver=%ver% -t docker.flexem.com/library/tdengine:base-%ver% .
docker push docker.flexem.com/library/tdengine:base-%ver%
pause
