-- https://leetcode.com/problems/recyclable-and-low-fat-products/submissions/1026750560/?envType=study-plan-v2&envId=top-sql-50

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y'
