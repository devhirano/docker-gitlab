#!/bin/bash

RUN_WITH_DESTROY="true"
NAME="gitlab"
VERSION="latest"
AUTHOR="devhirano"
TIMEZONE="Asia/Tokyo"
OPTIONS="-p 18888:80 -p 2222:22"
ENABLED_CACHE="false"

if [ "${ENABLED_CACHE}" == "false" ]; then
  CACHE="--no-cache"
else
  CACHE=""
fi


function question () {
QUESTION="$1"
while true; do
    read -p "Do you wish $QUESTION (y/n) " yn
    case $yn in
        [Yy]* ) echo "yes" ; break;;
        [Nn]* ) echo "no" ; break;;
        * ) ;;
    esac
done
}

