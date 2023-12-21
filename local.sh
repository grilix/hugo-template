#!/bin/bash

docker run \
  -p 8099:8099 \
  -u 1000:1000 \
  -v ${PWD}:/srv/hugo \
  --workdir /srv/hugo \
  hugomods/hugo \
  hugo server --bind 0.0.0.0 -p 8099
