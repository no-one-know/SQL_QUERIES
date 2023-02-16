#   https://leetcode.com/problems/bank-account-summary-ii/description/?envType=study-plan&id=sql-i

select t1.name,sum(t2.amount) as balance
from Users as t1
inner join Transactions as t2
on t1.account=t2.account
group by t1.account
having sum(t2.amount)>10000