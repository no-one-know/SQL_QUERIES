#   https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT 
      n
    , CASE WHEN p is null THEN 'Root'
          WHEN n IN (SELECT DISTINCT p from bst) THEN 'Inner'
          ELSE 'Leaf' END AS result
FROM bst
ORDER BY n