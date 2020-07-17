#!/bin/bash

CURL=/usr/bin/curl
HEADER='Content-Type: application/json'
REQUEST=POST
CREDENTIALS=${LOGIN}:${PASSWORD}
TEXT='HB9DQA: Test'
TRANSMITTERGROUP=hb-all
HAMCALL=HB9DQA
EMERGENCY=false
URL=http://www.hampager.de:8080/calls
URL=http://tuxracer.ch:8081
URL=http://tuxracer.ch:8081/api/v1/addrecord/1

msg() {
  echo
  echo usage:
  echo "${0} <CALLER> <MSG> <RECEIVER>"
  echo
}


if [ $# != 3  ]; then
  msg
  exit 1
fi

CALLER=$1
MESSAGE=$2
RECEIVER=$3
TEXT=$1:$2

#DATA="{\"text\": \"${TEXT}\", \"callSignNames\": [\"${HAMCALL}\"], \"transmitterGroupNames\": [\"${TRANSMITTERGROUP}\"], \"emergency\": ${EMERGENCY}}"
#echo $DATA

curl -H "${HEADER}" -X ${REQUEST} ${URL} -u ${CREDENTIALS} -d @- <<END;
{
  "text": "${TEXT}", 
  "callSignNames": ["${HAMCALL}"],
  "transmitterGroupNames": ["${TRANSMITTERGROUP}"],
  "emergency": "${EMERGENCY}"
}
END

