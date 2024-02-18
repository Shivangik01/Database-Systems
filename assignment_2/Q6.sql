
-- Databse: livesql
-- Description:
-- Found users from USERS table whose address contains 'US' in it.
-- Further checked if any user has channel which was created every week of FEBRUARY month, hence 28 days were subtracted and the count UPLOAD_DATE was considered 4.



SELECT NAME as CONTENT_CREATORS
FROM USERS 
WHERE USERS.ADDRESS LIKE '%US%' AND USERID in 
(SELECT OWNER_USER_ID FROM CHANNELS WHERE CHANNELNAME in 
  (SELECT CHANNELNAME FROM UPLOAD_REQUEST WHERE UPLOAD_DATE >= TRUNC(SYSDATE, 'MM') - 28
GROUP BY CHANNELNAME HAVING COUNT(DISTINCT TRUNC(UPLOAD_DATE, 'IW')) = 4));