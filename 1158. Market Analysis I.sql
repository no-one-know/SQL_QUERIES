#   https://leetcode.com/problems/market-analysis-i/description/?envType=study-plan&id=sql-i

with temp as (
    select *
    from Users as t1
    left join Orders as t2
    on t1.user_id=t2.buyer_id
)
select temp.user_id as buyer_id,temp.join_date,count(temp.order_id) as orders_in_2019
from temp
where temp.order_date>='2019-01-01'
group by temp.user_id
union 
select user_id as buyer_id,join_date,0 as orders_in_2019
from Users
where user_id not in (
    with temp as (
    select *
    from Users as t1
    left join Orders as t2
    on t1.user_id=t2.buyer_id
)
select temp.user_id
from temp
where temp.order_date>='2019-01-01'
group by temp.user_id
)