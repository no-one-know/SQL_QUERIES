#   https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

select temp.hacker_id,temp.name,sum(temp.max_score)
from(
    select t.hacker_id,t.name,t.challenge_id,max(t.score) as max_score
    from (
    select h.*,s.challenge_id,s.score
    from Hackers as h
    inner join Submissions as s
    on h.hacker_id=s.hacker_id
    ) as t
    group by t.hacker_id, t.name,t.challenge_id
) as temp
group by temp.hacker_id,temp.name
having sum(temp.max_score) !=0
order by sum(temp.max_score) desc,temp.hacker_id