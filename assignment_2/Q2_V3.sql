

CREATE VIEW video_ratio AS SELECT v.video_url, v.title, v.channel_name, s.likes, s.views, (s.likes/s.views) AS ratio FROM VIDEOS v
JOIN STATISTICS s ON v.video_url = s.video_url;

CREATE VIEW marvel_ratio AS SELECT vr.title, vr.channel_name, vr.ratio FROM video_ratio vr
JOIN CHANNELS c ON vr.channel_name = c.channel_name
JOIN USERS u ON c.user_id = u.user_id
WHERE u.name LIKE '%Marvel Entertainment%'
ORDER BY vr.title ASC;

SELECT * FROM marvel_ratio;