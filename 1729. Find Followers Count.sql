#   https://leetcode.com/problems/find-followers-count/description/?envType=study-plan&id=sql-i

select user_id,count(follower_id) as followers_count
from Followers
group by user_id
order by user_id