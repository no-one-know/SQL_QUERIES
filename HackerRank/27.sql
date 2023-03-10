#   https://www.hackerrank.com/challenges/the-company/problem

select Company.company_code,
        Company.founder,
        count(distinct(Employee.lead_manager_code)),
        count(distinct(Employee.senior_manager_code)),
        count(distinct(Employee.manager_code)),
        count(distinct(Employee.employee_code))
from Company
inner join Employee
on Company.company_code=Employee.company_code
group by Company.company_code,Company.founder
order by Company.company_code