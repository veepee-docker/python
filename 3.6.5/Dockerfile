# Copyright (c) 2018 Vente-Privée
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# TODO: vpgrp/ubuntu:bionic
FROM ubuntu:bionic

ENV DEBIAN_FRONTEND="noninteractive" \
    TZ="Europe/Amsterdam"

RUN apt-get update  -qq && \
    apt-get upgrade -qq -y && \
    apt-get install -qq -y \
      build-essential \
      libssl-dev \
      libsasl2-dev \
      pandoc \
      python3 \
      python3-dev \
      python3-pip \
      python3-setuptools \
      python-virtualenv \
      virtualenv

RUN update-alternatives --install \
      /usr/bin/python python /usr/bin/python3.6 60 && \
    update-alternatives --install \
      /usr/bin/pip pip /usr/bin/pip3 60 && \
    pip install --quiet --upgrade pip

HEALTHCHECK NONE
# EOF
