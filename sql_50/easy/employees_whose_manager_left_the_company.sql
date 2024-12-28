-- https://leetcode.com/problems/employees-whose-manager-left-the-company/submissions/1489447866/?envType=study-plan-v2&envId=top-sql-50

SELECT e1.employee_id
FROM employees AS e1
WHERE e1.manager_id NOT IN (SELECT e2.employee_id FROM employees AS e2)
    AND e1.salary < 30000
ORDER BY 1
