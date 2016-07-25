#!/bin/sh

cd "$(dirname "$0")"

docker build -t test ../../nginx
docker build -t spec .
docker run -d --name test -p 8000:80 spec

sleep 1

curl 127.0.0.1:8000 | cmp -b i.html
code=$?

docker kill test
docker rm test
docker rmi spec test

exit $code
