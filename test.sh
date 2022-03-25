#!/bin/sh

set -ex

docker build -t falcon-build .
docker run -d --name falcon-test falcon-build

sleep 1

docker exec -it falcon-test /usr/bin/curl --header "X-Forwarded-For: 10.10.10.10" \
                                     --no-buffer -XGET \
                                     --unix-socket /var/run/falcon.sock http://localhost/things
