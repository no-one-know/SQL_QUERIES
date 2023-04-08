#   https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

select concat(Name,'(',substr(Occupation,1,1),')') as Name
from occupations
UNION ALL
(select concat('There are a total of ',count(Occupation),' ', lower(Occupation),'s.') as Name 
from OCCUPATIONS 
group by Occupation) 
order by Name;