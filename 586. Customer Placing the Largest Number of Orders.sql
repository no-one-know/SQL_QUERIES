#   https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/

with t as(
    select customer_number,count(customer_number) as orders
    from Orders
    group by customer_number
)
select t.customer_number
from t
where t.orders=(select max(orders) from t)