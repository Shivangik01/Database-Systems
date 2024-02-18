A few assumptions were made:
1. Video has only 2 categories: informational video and entertainment video. Informational Videos are categorized based on keyword. Entertainment Videos are categorized based on tags.
2. A user must have at least 1 channel to be a creator.
3. Multiple sponsors can sponsor a video.
4. A user can choose his/her subscription type to a channel.


COMPONENTS OF ERM:

ENTITY DETAILS-

	USER
	A person with an account on Youtube. A user can be a video consumer, video creator, or both.

	VIDEO CONSUMER
	A user who uses youtube to watch videos and subscribe to channels.

	VIDEO CREATOR
	A user who owns at least one channel and uploads videos.

	CHANNEL
	Contains details of channel where the creators upload the videos and consumers can watch the videos.

	SUBSCRIPTION
	Details of which user has subscribed to which channel.

	VIDEO
	Details of videos uploaded by the creators for the consumers to watch.

	INFORMATIONAL VIDEO
	Videos that are categorized based on keywords.

	ENTERTAINMENT VIDEO
	Videos that are categorized based on tags.

	VIDEO_STATISTICS
	The likes, dislikes, comments, shares, and views on a video.

	COMMENT
	Details of comments on the videos.

	SPONSORSHIP
	Details of which videos are sponsored by which sponsors.

	SPONSOR
	Details of sponsor who sponsors the videos.
	
RELATIONSHIP DETAILS-

	USER
	USER_IS_CONSUMER
	-
	VIDEO CONSUMER

	USER
	USER_IS_CREATOR
	-
	VIDEO CREATOR

	VIDEO CONSUMER
	is subscribed to
	(1,1) : (0,M)
	SUBSCRIPTION

	VIDEO CONSUMER
	writes
	(1,1) : (0,M)
	COMMENT

	VIDEO CREATOR
	creates
	(1,1) : (1,M)
	CHANNEL

	VIDEO CREATOR
	uploads
	(1,1) : (0,M)
	VIDEO

	CHANNEL
	is subscribed by
	(0,M) : (1,1)
	SUBSCRIPTION

	VIDEO
	displays
	(1,1) : (1,1)
	VIDEO STATISTICS

	VIDEO
	has
	(1,1) : (0,M)
	COMMENT

	VIDEO
	is sponsored by
	(1,1) : (0,M)
	SPONSORSHIP

	VIDEO
	category
	-
	INFORMATIONAL VIDEO

	VIDEO
	category
	-
	ENTERTAINMENT VIDEO

	SPONSOR
	is promoted by
	(0,M) : (1,1)
	SPONSORSHIP
