#   https://leetcode.com/problems/rising-temperature/description/?envType=study-plan&id=sql-i

select t1.id
from Weather as t1,Weather as t2
where t1.temperature>t2.temperature and DATEDIFF(t1.recordDate,t2.recordDate)=1