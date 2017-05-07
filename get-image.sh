#!/bin/bash
# get-image.sh

LOGFILE='logfile'
TIMEFORMAT='%Y-%m-%d-%H%M'
URL='http://webkamera.vegvesen.no/kamera?id='

# Declare the locations and their webcam id in an associated array (Thanks BASH 4)
declare -A PLACES
PLACES=( \
  [bleik]=1335902 \
  [kjoelhaagen]=1037564 \
  [giaeverbukta]=914512 \
  [tverrforbindelsen]=1017478 \
  [kleivodden]=791209 \
  [bo]=1134205 \
  )

# Check if folders exists
for key in ${!PLACES[@]}; do
  if [ ! -d "${key}" ]; then
    mkdir ${key}
  fi
done

# Grab road webcam images every ten min
while true
do
  for key in ${!PLACES[@]}; do
    wget -a $LOGFILE -O ${key}/$(date +${key}_$TIMEFORMAT.jpg) $URL${PLACES[${key}]}
  done
  sleep 600
done
