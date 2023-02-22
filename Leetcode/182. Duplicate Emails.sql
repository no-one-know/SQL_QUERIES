#   https://leetcode.com/problems/duplicate-emails/description/?envType=study-plan&id=sql-i

select email as Email
from Person
group by email
having count(email)>1