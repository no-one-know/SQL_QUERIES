#   https://leetcode.com/problems/the-latest-login-in-2020/description/?envType=study-plan&id=sql-i

select user_id,max(time_stamp) as last_stamp
from Logins
where time_stamp>='2020-01-01 00:00:00' and time_stamp<'2021-01-01 00:00:00'
group by user_id