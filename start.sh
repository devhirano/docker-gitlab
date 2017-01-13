#!/bin/bash

. config.sh

if [ "${RUN_WITH_DESTROY}" == "true" ];then
  ANS=`question "to destroy running container? [$NAME]"`
  if [ "$ANS" == "yes" ];then
    sudo docker rm -f ${NAME}
  else
    echo "set false RUN_WITH_DESTROY param of the ./conf.sh."
    exit 1
  fi
fi


sudo docker run -tdi \
        -e TZ=${TIMEZONE} \
        --name ${NAME} \
        --hostname ${NAME} \
        ${OPTIONS} \
        ${AUTHOR}/${NAME}:${VERSION}
