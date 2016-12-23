#!/bin/bash

. config.sh

sudo docker build ${CACHE} \
        -t ${AUTHOR}/${NAME}:${VERSION} .

