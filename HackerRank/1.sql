#   https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true

select count(t.NAME)
from (
select * 
from CITY
where POPULATION>100000
) as t