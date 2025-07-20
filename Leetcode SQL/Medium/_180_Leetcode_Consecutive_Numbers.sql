# Write your MySQL query statement below
select distinct log1.num as ConsecutiveNums
from Logs as log1
join Logs as log2 on log1.id + 1 = log2.id
join Logs as log3 on log2.id + 1 = log3.id
where log1.num = log2.num
    and log2.num = log3.num