#   https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true

select 
       A.contest_id,
       A.hacker_id,
       A.name,
       sum(ST.total_submissions),
       sum(ST.total_accepted_submissions),
       sum(VW.total_views),
       sum(VW.total_unique_views)
from
       (
         select
               distinct CH.challenge_id ,
               CN.contest_id ,
               CN.hacker_id ,
               CN.name 
         from
               contests as CN  
               inner join colleges as CL on CN.contest_id = CL.contest_id 
               inner join challenges as CH on CL.college_id = CH.college_id
       ) as A
left join 
       (
         select 
               vs.challenge_id, 
               sum(vs.total_views) as total_views,
               sum(vs.total_unique_views) as total_unique_views 
         from 
               view_stats vs
         group by 
               vs.challenge_id
       ) VW on A.challenge_id = VW.challenge_id
left join
       (
         select 
               ss.challenge_id, 
               sum(ss.total_submissions) as total_submissions,
               sum(ss.total_accepted_submissions) as total_accepted_submissions 
         from 
               submission_stats ss
         group by 
               ss.challenge_id
       ) ST on A.challenge_id = ST.challenge_id
group by
         A.contest_id, A.hacker_id, A.name
having 
         sum(ST.total_submissions)+sum(ST.total_accepted_submissions)+sum(VW.total_views)+sum(VW.total_unique_views)  > 0 
order by
         A.contest_id
;   