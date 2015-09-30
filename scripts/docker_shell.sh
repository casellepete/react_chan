#!/bin/bash
# docker_shell.sh

set -e

if (docker ps -a | grep react_chan_shell); then
  docker rm -f react_chan_shell
fi


docker run -it --name react_chan_shell \
  -v "$PWD":/react_chan \
  -v /etc/ssl/cas-certs:/etc/ssl/cas-certs \
  -p 4002:4002 \
  -w /phoenix \
  caselle2/phoenix:v3 \
  bash


exit 0
