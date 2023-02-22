#   https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/description/?envType=study-plan&id=sql-i

select actor_id,director_id
from ActorDirector
group by actor_id,director_id
having count(director_id)>=3