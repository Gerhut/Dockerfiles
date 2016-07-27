#!/bin/sh

cd "$(dirname "$0")"

docker build -t test ../../cnpm
docker build -t spec .
docker run -d --name test -p 3000:3000 spec

sleep 1

if [ `curl "http://127.0.0.1:3000" | grep "^foo$"` ]
then
  code=0
else
  code=1
fi

docker kill test
docker rm test
docker rmi spec test

exit $code
