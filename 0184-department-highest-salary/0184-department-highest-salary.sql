# Write your MySQL query statement below
with cte as(
select *, dense_rank() over(partition by departmentId order by salary desc) as rn
from Employee
)
select d.name as Department, cte.name as Employee, cte.salary as Salary
 from cte join department d
on cte.departmentId = d.id
where cte.rn =1