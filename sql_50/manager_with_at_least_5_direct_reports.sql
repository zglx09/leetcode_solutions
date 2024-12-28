-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/submissions/1329310939/?envType=study-plan-v2&envId=top-sql-50

SELECT
    e1.name
FROM Employee AS e1
INNER JOIN Employee AS e2 
    ON e1.id = e2.managerID
GROUP BY e1.id
HAVING COUNT(e1.id) >= 5
