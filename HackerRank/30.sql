#   https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

with t as(
select Students.*,
case
when Students.Marks between 0 and 9 then 1
when Students.Marks between 10 and 19 then 2
when Students.Marks between 20 and 29 then 3
when Students.Marks between 30 and 39 then 4
when Students.Marks between 40 and 49 then 5
when Students.Marks between 50 and 59 then 6
when Students.Marks between 60 and 69 then 7
when Students.Marks between 70 and 79 then 8
when Students.Marks between 80 and 89 then 9
when Students.Marks between 90 and 100 then 10
end 
as Grade
from Students 
)
select 
case
when t.Grade>=8 then t.Name
else 'NULL'
end 
as name,
t.Grade,t.Marks
from t
order by t.Grade desc,t.Name