-- https://leetcode.com/problems/exchange-seats/?envType=study-plan-v2&envId=top-sql-50

SELECT 
    id,
    CASE 
        WHEN (id % 2 = 0) THEN LAG(student) OVER(ORDER BY id ASC)
        ELSE COALESCE(LEAD(student) OVER(ORDER BY id ASC), student)
    END AS student
FROM seat
