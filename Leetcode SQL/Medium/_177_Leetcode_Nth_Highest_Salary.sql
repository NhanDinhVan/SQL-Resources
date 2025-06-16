
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE offsetVal INT;
  SET offsetVal = N - 1;

  RETURN (
    SELECT
      CASE
        WHEN COUNT(DISTINCT Salary) < N THEN NULL
        ELSE (
          SELECT DISTINCT Salary
          FROM Employee
          ORDER BY Salary DESC
          LIMIT 1 OFFSET offsetVal
        )
      END
    FROM Employee
  );
END