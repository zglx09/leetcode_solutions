-- https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50

SELECT 
    A.student_id, 
    student_name,
    A.subject_name,
    coalesce(attended_exams, 0) AS attended_exams
FROM( 
    SELECT student_id, student_name, subject_name
    FROM Students 
    CROSS JOIN Subjects 
) AS A
LEFT JOIN(
    SELECT student_id,
        subject_name,
        COUNT(*) AS attended_exams 
    FROM Examinations 
    GROUP BY student_id, subject_name
) AS B
ON A.subject_name = B.subject_name 
AND A.student_id = B.student_id
ORDER BY student_id, subject_name
