#   https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

select sum(c.POPULATION)
from CITY as c
inner join COUNTRY as co
on c.COUNTRYCODE=co.CODE
WHERE co.CONTINENT='Asia'