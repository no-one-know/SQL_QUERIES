#   https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

WITH RECURSIVE t as (
SELECT 20 AS U
UNION ALL
SELECT U - 1 AS U from t WHERE U > 1
)
SELECT REPEAT('* ', U)  FROM t;
  