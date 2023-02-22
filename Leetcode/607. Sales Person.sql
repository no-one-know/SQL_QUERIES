#   https://leetcode.com/problems/sales-person/description/?envType=study-plan&id=sql-i

select name 
from SalesPerson
where name not in(
    with p as(
    select s.sales_id,s.name,o.com_id
    from SalesPerson as s
    inner join Orders as o
    on s.sales_id=o.sales_id
    )
    select p.name as name
    from p
    inner join Company
    on p.com_id=Company.com_id and Company.name='RED'
)