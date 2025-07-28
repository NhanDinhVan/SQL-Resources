SELECT u.name, t.total_balance AS balance
FROM Users u
JOIN (
    SELECT account, SUM(amount) AS total_balance
    FROM Transactions
    GROUP BY account
    HAVING SUM(amount) > 10000
) t ON u.account = t.account;
