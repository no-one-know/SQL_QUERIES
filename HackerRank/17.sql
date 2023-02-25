#   https://www.hackerrank.com/challenges/weather-observation-station-20/problem

WITH rank_table AS( 
    SELECT ROW_NUMBER() OVER(ORDER BY LAT_N ASC) AS rnk, LAT_N 
    FROM STATION
)

SELECT ROUND(LAT_N, 4) 
FROM rank_table 
WHERE rnk = (SELECT ROUND(COUNT(*) / 2) FROM rank_table);