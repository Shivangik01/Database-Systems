
-- Databse: livesql
-- Description:
-- Joined channels, videos and users table. Found out the user 'Taylor Swift' first went to all her channels and checked respective videos. 
-- Amongs those videos a subquery to identify the video with max number of comments was taken out from statistics.
-- A view table was made to keep track of users who viewed the video, grouby was used to return the video title and amongst all the users who viewed the video, users having max and min age were returned.


SELECT VIDEOS.TITLE, MIN(USERS.AGE) AS MINAGE, MAX(USERS.AGE) AS MAXAGE
FROM VIDEOS 
INNER JOIN CHANNELS ON VIDEOS.CHANNELNAME = CHANNELS.CHANNELNAME
INNER JOIN VIDEO_VIEWS  ON VIDEOS.VIDEO_URL = VIDEO_VIEWS.VIDEO_URL
INNER JOIN USERS ON VIDEO_VIEWS.USERID = USERS.USERID
WHERE CHANNELS.OWNER_USER_ID = (SELECT USERID FROM USERS WHERE NAME = 'Taylor Swift')
AND VIDEOS.VIDEO_URL = (SELECT VIDEO_URL FROM STATISTICS WHERE NUMBER_OF_COMMENTS = (SELECT MAX(NUMBER_OF_COMMENTS) FROM STATISTICS))
GROUP BY VIDEOS.TITLE;
