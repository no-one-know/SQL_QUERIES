#   https://leetcode.com/problems/sales-analysis-iii/description/?envType=study-plan&id=sql-i

select t1.product_id,t1.product_name
from Product as t1
inner join Sales as t2
on t1.product_id=t2.product_id
group by t1.product_id
having min(t2.sale_date)>='2019-01-01' and max(t2.sale_date)<='2019-03-31'