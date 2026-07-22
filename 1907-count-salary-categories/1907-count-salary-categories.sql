# Write your MySQL query statement below
with category_ac as (
    select 'Low Salary' as category
     union all
    select 'Average Salary' as category
     union all
    select 'High Salary' as category
),
cte as (SELECT account_id,
case 
when income <20000 then 'Low Salary'
when income <= 50000 then 'Average Salary'
else 'High Salary' 
end as category
FROM accounts)

select c.category as category, count(account_id) as accounts_count 
from category_ac c left join cte on c.category = cte.category
group by category
