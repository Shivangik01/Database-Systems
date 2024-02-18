
-- Databse: livesql
-- Description:
-- Applied join on the INFORMATIONAL_VIDEOS keywords and each individual words found in all the comments.
-- They were grouped by the keywords and found the avg of the sentiments.
-- the rows were ordered in descending order of avg sentiments

SELECT INFORMATIONAL_VIDEOS.KEYWORDS, AVG(COMMENTS.SENTIMENT) AS AVG_SENTIMENT
FROM INFORMATIONAL_VIDEOS 
JOIN COMMENTS ON COMMENTS.COMMENT_TEXT LIKE '%' || INFORMATIONAL_VIDEOS.KEYWORDS || '%'
GROUP BY INFORMATIONAL_VIDEOS.KEYWORDS
ORDER BY AVG_SENTIMENT DESC;
