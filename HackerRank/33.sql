#   https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

select
W.id,
P.age,
W.coins_needed,
W.power
from wands as W 
JOIN wands_property as P on W.code = P.code
where P.is_evil = 0 
and W.coins_needed = (
                        select min(a.coins_needed) 
                        from wands a
                        join wands_property b on a.code = b.code
                        where a.code = W.code and
                        a.power = W.power
                      )
order by W.power desc, P.age desc;