# https://leetcode.com/problems/customers-who-never-order/?envType=study-plan&id=sql-i


select Customers.name as Customers
from Customers
left join Orders
on Customers.id=Orders.customerId
where customerId is null