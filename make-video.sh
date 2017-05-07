#!/bin/bash
# make-video.sh

SCRIPTHOME='/home/hoyd/code/veikamera'
WWWHOME='/home/hoyd/www/veikamera'
PLACES=(\
  bleik \
  kjoelhaagen \
  giaeverbukta \
  kleivodden \
  bo \
  tverrforbindelsen \
  )

# for each folder, make a video and move it when done
while true
do
  for i in "${PLACES[@]}"
  do
     cd $SCRIPTHOME/$i
     cat *.jpg | ffmpeg -framerate 25 -i - -c:v libx264 -profile:v high -crf 20 -pix_fmt yuv420p $i.mp4
     mv $i.mp4 $WWWHOME/video/$i.mp4
     cd $WWWHOME

     # Replace line in html-file to make unique video-object-url with ?t=date-variable
     sed -i 's/$i.mp4.*/$i.mp4?t='$(date +"%s")'\"\ type=\"video\/mp4\">/' index.html
  done
  sleep 86400
done
