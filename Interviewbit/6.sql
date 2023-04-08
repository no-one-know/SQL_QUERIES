#   https://www.interviewbit.com/problems/town-of-threes/

select TownName,Population
from TOWNS
where ID%3=0