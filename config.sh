#!/bin/bash

DIRECTORY_GIT="/var/opt/gitlab/git-data"
DIRECTORY_POSTGRESQL="/var/opt/gitlab/postgresql/data"

RUN_WITH_DESTROY="true"
NAME="gitlab"
VERSION="latest"
AUTHOR="devhirano"
TIMEZONE="Asia/Tokyo"
OPTIONS="-p 2222:22 -v $DIRECTORY_GIT:$DIRECTORY_GIT -v $DIRECTORY_POSTGRESQL:$DIRECTORY_POSTGRESQL"
ENABLED_CACHE="false"

mkdir -p $DIRECTORY_GIT
mkdir -p $DIRECTORY_POSTGRESQL

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

