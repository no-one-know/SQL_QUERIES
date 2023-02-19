#   https://leetcode.com/problems/capital-gainloss/description/?envType=study-plan&id=sql-i

with temp as(
    select stock_name,operation,sum(price) as capital_gain_loss
    from Stocks
    group by stock_name,operation
    order by operation
)
select t1.stock_name,t1.capital_gain_loss-t2.capital_gain_loss as capital_gain_loss
from temp as t1,temp as t2
where t1.stock_name=t2.stock_name and t2.operation='Buy' and t1.operation<>t2.operation