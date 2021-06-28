local DARKNESS_BACKGROUND=./bg/pq1.png
local BRIGHTNESS_BACKGROUND=./bg/pq2.png
local bgr=""
local time=`date +%H`

if [[ $time -ge 6 && $time -lt 17  ]] 
then
	bgr=$BRIGHTNESS_BACKGROUND	
else
	bgr=$DARKNESS_BACKGROUND
fi
feh --bg-fill $bgr
