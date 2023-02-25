#   https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true

with recursive cte as(
select 1 as u
union all
select u+1 as u
from cte
where u<20
)
select repeat('* ',u)
from cte