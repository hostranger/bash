#!/bin/sh

docker run \
    --rm=true --interactive --tty \
    --net="none" \
    -v `pwd`:/tj3 \
    -u `id -u` \
    treibholz/tj3:latest "$@"
