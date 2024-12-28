-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/submissions/1335918527/?envType=study-plan-v2&envId=top-sql-50

SELECT 
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM Activity 
WHERE activity_date BETWEEN ('2019-07-27' - INTERVAL 29 DAY) AND '2019-07-27'
GROUP BY 1
