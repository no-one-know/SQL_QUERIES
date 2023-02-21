#   https://leetcode.com/problems/exchange-seats/description/

select s1.id as id,
case 
when s2.student is null then s1.student
else s2.student
end as student
from Seat as s1
left join Seat as s2
on (
    case 
    when s1.id%2=1 then s2.id=s1.id+1
    else s2.id=s1.id-1
    end
)