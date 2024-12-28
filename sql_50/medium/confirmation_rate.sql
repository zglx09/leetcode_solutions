-- https://leetcode.com/problems/confirmation-rate/submissions/1488682713/?envType=study-plan-v2&envId=top-sql-50

-- First CTE that identifies users who managed to signup and received a 'confirmed'
WITH confirmed AS(
    SELECT DISTINCT
        s.user_id,
        COUNT(c.time_stamp) AS no_of_confirms
    FROM signups AS s
    LEFT JOIN confirmations AS c
        ON s.user_id = c.user_id
    WHERE action = 'confirmed'
    GROUP BY 1
),

-- Second CTE identifies all the requested signups irregardless or whether it failed or was confirmed 
totals AS(
    SELECT DISTINCT
        s.user_id,
        COUNT(c.time_stamp) AS no_of_requests
    FROM signups AS s
    LEFT JOIN confirmations AS c
        ON s.user_id = c.user_id
    GROUP BY 1
)

-- Aggregating the 2 CTEs to calculate the confirmation rate. Using COALESCE because 2 of the users did not make any request at all and was therefore null. 
SELECT DISTINCT
    s.user_id,
    COALESCE(ROUND(c.no_of_confirms/t.no_of_requests, 2), 0.00) AS confirmation_rate
FROM signups AS s
LEFT JOIN confirmed AS c
    ON s.user_id = c.user_id
LEFT JOIN totals AS t
    ON s.user_id = t.user_id
GROUP BY 1
