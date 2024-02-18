
-- Databse: livesql
-- Description:
-- Joined Channels, users and STATISTICS table then which helps filter out the users having Marvel Entertainment in their username.
-- calculated the likes to views ratio and then sorted according to video title ascending order.


SELECT VIDEOS.TITLE AS "Video Title", CHANNELS.CHANNELNAME AS "Channel Name", STATISTICS.LIKES/ STATISTICS.VIEWS AS "Ratio of Likes to Views"
FROM VIDEOS
INNER JOIN CHANNELS ON VIDEOS.CHANNELNAME=CHANNELS.CHANNELNAME
INNER JOIN USERS ON USERS.USERID=CHANNELS.OWNER_USER_ID
INNER JOIN STATISTICS ON VIDEOS.VIDEO_URL = STATISTICS.VIDEO_URL
WHERE USERS.NAME LIKE '%Marvel Entertainment%'
ORDER BY VIDEOS.TITLE ASC;
