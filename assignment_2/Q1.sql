
-- Databse: livesql
-- Description: 
-- Added all the sponssor amount by grouping the sponsors according to their id, name and phone. 
-- Then sorted it in descending order. 
-- Fetched the first 1 row which would give the max value.

SELECT NAME, PHONE, SUM(SPONSOR_AMOUNT) AS TOTAL_SPONSORED
FROM SPONSOR
GROUP BY SPONSOR_ID, NAME, PHONE
ORDER BY TOTAL_SPONSORED DESC
FETCH FIRST 1 ROW ONLY;