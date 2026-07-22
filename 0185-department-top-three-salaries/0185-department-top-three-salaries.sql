# Write your MySQL query statement below
with ranked_salary as (
select *, 
dense_rank() over(partition by departmentId order by salary desc) as rn
from employee)

select d.name as Department, r.name as Employee, Salary from ranked_salary r join department d
on r.departmentId = d.id
where rn <= 3