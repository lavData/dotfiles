#!/bin/bash

export DARKNESS_BACKGROUND=~/.scripts/bg/pq2.png

export BRIGHTNESS_BACKGROUND=~/.scripts/bg/pq1.png
export bgr=""
export brightness=50%
export time=`date +%H`

if [[ $time -ge 6 && $time -lt 17  ]]; 
then
	bgr=$BRIGHTNESS_BACKGROUND	
	brightness=80%
else
	bgr=$DARKNESS_BACKGROUND
	brightness=30%
fi
feh --bg-fill $bgr
brightnessctl s $brightness
