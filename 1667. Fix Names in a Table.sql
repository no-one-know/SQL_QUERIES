#   https://leetcode.com/problems/fix-names-in-a-table/description/?envType=study-plan&id=sql-i

SELECT Users.user_id , CONCAT(UPPER(SUBSTR(Users.name,1,1)),LOWER(SUBSTR(Users.name,2))) AS name 
FROM Users
ORDER BY
Users.user_id ASC