#   https://leetcode.com/problems/group-sold-products-by-the-date/description/?envType=study-plan&id=sql-i

SELECT 
	sell_date,
	COUNT(DISTINCT product) AS num_sold,
	GROUP_CONCAT(DISTINCT product ORDER BY product ASC) AS products 
FROM Activities
GROUP BY sell_date