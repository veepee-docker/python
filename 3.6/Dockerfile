# Copyright (c) 2020 , Veepee
#
# Permission  to use,  copy, modify,  and/or distribute  this software  for any
# purpose  with or  without  fee is  hereby granted,  provided  that the  above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS  SOFTWARE INCLUDING ALL IMPLIED  WARRANTIES OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL  DAMAGES OR ANY DAMAGES  WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER  TORTIOUS ACTION,  ARISING OUT  OF  OR IN  CONNECTION WITH  THE USE  OR
# PERFORMANCE OF THIS SOFTWARE.

FROM vptech/ubuntu:bionic

ENV DEBIAN_FRONTEND="noninteractive" \
    LANG="C.UTF-8" \
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
      virtualenv && \
    apt-clean

RUN update-alternatives --install \
      /usr/bin/python python /usr/bin/python3.6 60 && \
    update-alternatives --install \
      /usr/bin/pip pip /usr/bin/pip3 60 && \
    pip install --quiet --upgrade pip

HEALTHCHECK NONE
# EOF
