# https://leetcode.com/problems/find-customer-referee/?envType=study-plan&id=sql-i


select name 
from Customer
where referee_id is null or referee_id<>2