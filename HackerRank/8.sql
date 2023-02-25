#   https://www.hackerrank.com/challenges/earnings-of-employees/problem

select months*salary as earnings, count(*) 
from Employee 
Group by earnings 
order by earnings Desc 
Limit 1;