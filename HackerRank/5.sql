#   https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true

select sum(POPULATION)
from CITY
where COUNTRYCODE='JPN'