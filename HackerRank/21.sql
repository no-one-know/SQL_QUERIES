#   https://www.hackerrank.com/challenges/average-population-of-each-continent/problem

select co.continent, floor(avg(c.population))
from city c
inner join country co 
on c.countrycode = co.code
group by co.continent;