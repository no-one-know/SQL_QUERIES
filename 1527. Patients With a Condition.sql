#   https://leetcode.com/problems/patients-with-a-condition/description/?envType=study-plan&id=sql-i

select * 
from Patients
where case
when position(" " in conditions)=0 then conditions like 'DIAB1%'
else conditions like '%DIAB1%'
end