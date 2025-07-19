SELECT 
    d.name AS Department,
    e1.name AS Employee,
    e1.salary AS Salary
FROM 
    Employee AS e1
JOIN 
    Department AS d ON e1.departmentId = d.id
WHERE 
    e1.salary = (
        SELECT MAX(e2.salary)
        FROM Employee AS e2
        WHERE e2.departmentId = e1.departmentId
    );