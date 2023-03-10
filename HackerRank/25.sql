#   https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true

select f.Name
from(
    select l.*,p.Salary as Friend_Salary
    from(
    select t.*,p.Salary
    from(
    select s.*,f.Friend_ID
    from Students as s
    inner join Friends as f
    on s.ID=f.ID
    )as t
    inner join Packages as p
    on t.ID=p.ID
    ) as l
    inner join Packages as p
    on l.Friend_ID=p.ID
)as f
where f.Friend_Salary>f.Salary
order by f.Friend_Salary


