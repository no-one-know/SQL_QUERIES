#   https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan&id=sql-i

select t1.customer_id,count(t1.customer_id) as count_no_trans
from Visits as t1
left join Transactions as t2
on t1.visit_id=t2.visit_id
where t2.visit_id is null
group by t1.customer_id