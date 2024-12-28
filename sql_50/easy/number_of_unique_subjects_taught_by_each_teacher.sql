-- https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/submissions/1333897623/?envType=study-plan-v2&envId=top-sql-50

SELECT 
    t.teacher_id,
    COUNT(DISTINCT t.subject_id) AS cnt
FROM Teacher AS t
GROUP BY 1
