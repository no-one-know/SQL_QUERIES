#   https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

with t as(
        select h.*,count(c.challenge_id) as total
        from Hackers as h
        inner join Challenges as c
        on h.hacker_id=c.hacker_id
        group by h.hacker_id,h.name       
)
select t.*
from t
where t.total=(select max(t.total) from t) or t.total in ( select t.total from t group by t.total having count(t.hacker_id)<2)
order by t.total desc, t.hacker_id