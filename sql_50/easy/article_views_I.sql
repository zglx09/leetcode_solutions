-- https://leetcode.com/problems/article-views-i/submissions/1028170203/?envType=study-plan-v2&envId=top-sql-50

SELECT DISTINCT 
  author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id ASC
