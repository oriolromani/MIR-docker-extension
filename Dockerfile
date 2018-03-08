#!/usr/bin/env bash

FROM mtgupf/mir-toolbox

RUN pip3 install --upgrade pip
ADD requirements.txt /tmp/requirements/requirements.txt
RUN pip3 install -r /tmp/requirements/requirements.txt


