-- https://leetcode.com/problems/invalid-tweets/submissions/1028174038/?envType=study-plan-v2&envId=top-sql-50

SELECT tweet_id
FROM Tweets
WHERE char_length(content) >15
