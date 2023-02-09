# https://leetcode.com/problems/swap-salary/description/?envType=study-plan&id=sql-i


update Salary
set sex=case
when sex='f' then 'm'
else 'f'
end