#!/usr/bin/env bash

set -e

if [ "${1}" ]
then
    DOCKER_USER=${1}
else
    DOCKER_USER=${USER}
fi

# Python 2.7
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/python:2.7" \
       2.7

# Python 3.4
docker build \
       --force-rm \
       --tag \
       "${DOCKER_USER}/python:3.4" \
       3.4

# Python 3.5
docker build \
       --force-rm \
       --tag \
       "${DOCKER_USER}/python:3.5" \
       3.5

# Python 3.7
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/python:3.7" \
       3.7

# Tests
clear
COMMAND='python --version'
echo -n '2.7: ' && \
    docker run --rm \
           "${DOCKER_USER}/python:2.7" \
           bash -c "${COMMAND}"
echo -n '3.4:  ' && \
    docker run \
           --rm \
           "${DOCKER_USER}/python:3.4" \
           bash -c "${COMMAND}"
echo -n '3.5:  ' && \
    docker run \
           --rm \
           "${DOCKER_USER}/python:3.5" \
           bash -c "${COMMAND}"
echo -n '3.7:  ' && \
    docker run \
           --rm \
           "${DOCKER_USER}/python:3.7" \
           bash -c "${COMMAND}"
# EOF
