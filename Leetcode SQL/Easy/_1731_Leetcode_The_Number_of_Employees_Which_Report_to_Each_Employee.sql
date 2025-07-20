# Write your MySQL query statement below
-- select e.reports_to as employee_id, 
-- (select e2.name
-- from Employees as e2 
-- where e2.employee_id = e.reports_to) as name
-- , count(*) as reports_count, round(avg(e.age)) as average_age
-- from Employees as e
-- group by e.reports_to 
-- having e.reports_to is not null
-- order by e.reports_to
SELECT 
  e.reports_to AS employee_id,
  m.name,
  COUNT(*) AS reports_count,
  ROUND(AVG(e.age)) AS average_age
FROM Employees e
JOIN Employees m ON e.reports_to = m.employee_id
GROUP BY e.reports_to, m.name
ORDER BY e.reports_to;
