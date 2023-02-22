#   https://leetcode.com/problems/trips-and-users/description/

with t as(
    with q as(
        select *
        from Trips
        inner join Users 
        on Trips.client_id=Users.users_id
        where Users.banned='No'
    )
    select q.request_at,q.status,count(q.status) as number
    from q
    inner join Users
    on q.driver_id=Users.users_id
    where Users.banned='No'
    group by q.request_at,q.status
)
select t.request_at as Day,(
    case 
    when (select sum(number) from t as q where q.request_at=t.request_at and q.status in ('cancelled_by_client','cancelled_by_driver')) is null then 0
    else round((select sum(number) from t as q where q.request_at=t.request_at and q.status in ('cancelled_by_client','cancelled_by_driver'))/(select sum(number) from t as q where q.request_at=t.request_at),2
    )
    end) as 'Cancellation Rate'
from t
where t.request_at in ('2013-10-03','2013-10-02','2013-10-01')
group by t.request_at
order by t.request_at
limit 3;