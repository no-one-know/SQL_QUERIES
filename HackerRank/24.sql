#   https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

select result.hacker_id,result.name
from(
    select final.*,h.name
    from(
    select t.*,d.score as total_score
    from (
    select s.*,c.difficulty_level
    from Submissions as s
    inner join Challenges as c
    on s.challenge_id=c.challenge_id)as t
    inner join Difficulty as d
    on t.difficulty_level=d.difficulty_level
    where t.score=d.score
    )as final
    inner join Hackers as h
    on final.hacker_id=h.hacker_id
)as result
group by result.hacker_id,result.name
having count(result.challenge_id)>1
order by count(result.challenge_id) desc,result.hacker_id asc