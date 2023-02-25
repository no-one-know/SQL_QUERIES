#   https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

select c.NAME
from CITY as c
inner join COUNTRY as co
on c.COUNTRYCODE=co.CODE
WHERE co.CONTINENT='Africa'