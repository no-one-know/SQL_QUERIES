# https://leetcode.com/problems/combine-two-tables/


select t1.firstname,t1.lastname,t2.city,t2.state
from Person as t1
left join Address as t2
on t1.personId=t2.personId