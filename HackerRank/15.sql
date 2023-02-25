#   https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true

select round(max(LONG_W)-min(LONG_W)+max(LAT_N)-min(LAT_N),4)
from STATION