#   https://leetcode.com/problems/top-travellers/description/?envType=study-plan&id=sql-i

select t1.name,
case 
when t2.distance is null then 0
else sum(t2.distance) 
end
as travelled_distance
from Users as t1
left join Rides as t2
on t1.id=t2.user_id
group by t1.id
order by travelled_distance desc,t1.name asc