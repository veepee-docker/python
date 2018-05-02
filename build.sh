#!/usr/bin/env bash

set -e

if [ "${1}" ]
then
    DOCKER_USER=${1}
else
    DOCKER_USER=${USER}
fi

# Python latest
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/python:latest" \
       .

# Python 2.7.13
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/python:2.7.13" \
       2.7.13

# Python 3.4.2
docker build \
       --force-rm \
       --tag \
       "${DOCKER_USER}/python:3.4.2" \
       3.4.2

# Python 3.5.3
docker build \
       --force-rm \
       --tag \
       "${DOCKER_USER}/python:3.5.3" \
       3.5.3

# Python 3.6.5
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/python:3.6.5" \
       3.6.5

# Tests
clear
COMMAND='python --version'
echo -n 'latest: ' && \
    docker run \
           --rm \
           "${DOCKER_USER}/python:latest" \
           bash -c "${COMMAND}"
echo -n '2.7.13: ' && \
    docker run --rm \
           "${DOCKER_USER}/python:2.7.13" \
           bash -c "${COMMAND}"
echo -n '3.4.2:  ' && \
    docker run \
           --rm \
           "${DOCKER_USER}/python:3.4.2" \
           bash -c "${COMMAND}"
echo -n '3.5.3:  ' && \
    docker run \
           --rm \
           "${DOCKER_USER}/python:3.5.3" \
           bash -c "${COMMAND}"
echo -n '3.6.5:  ' && \
    docker run \
           --rm \
           "${DOCKER_USER}/python:3.6.5" \
           bash -c "${COMMAND}"
# EOF
