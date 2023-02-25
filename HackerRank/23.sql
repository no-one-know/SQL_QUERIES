#   https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

with temp as (
    select name,occupation,
    row_number() over(partition by occupation order by name) as row_num 
    from occupations
)
select max(case when occupation = 'Doctor' then Name end) as Doctor, 
       max(case when occupation = 'Professor' then Name end )as Professor, 
       max(case when occupation = 'Singer' then Name end) as Singer, 
       max(case when occupation = 'Actor' then Name end) as Actor 
from temp 
group by row_num