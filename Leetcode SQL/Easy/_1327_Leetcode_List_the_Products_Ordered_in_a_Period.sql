SELECT 
    p.product_name AS product_name,
    SUM(o.unit) AS unit
FROM Products AS p
JOIN Orders AS o USING(product_id)
WHERE YEAR(o.order_date) = 2020 
  AND MONTH(o.order_date) = 2
GROUP BY p.product_name
having SUM(o.unit) >= 100
ORDER BY unit DESC;
