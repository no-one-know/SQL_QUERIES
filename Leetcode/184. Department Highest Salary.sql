#   https://leetcode.com/problems/department-highest-salary/description/

select Department.name as Department,Employee.name as Employee,Employee.salary as Salary
from Department
inner join Employee
on Department.id=Employee.departmentId
where (Department.id,Employee.salary) in (
    select Department.id,max(Employee.salary)
    from Department
    inner join Employee
    on Department.id=Employee.departmentId
    group by Department.id
)
