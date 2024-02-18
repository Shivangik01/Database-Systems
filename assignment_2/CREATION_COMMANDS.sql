-- run all the commands to create the tables for database: livesql

CREATE TABLE USERS(
    USERID int NOT NULL PRIMARY KEY,
    NAME varchar(255),
    EMAIL varchar(255),
    ADDRESS varchar(255),
    AGE INT,
    IS_VID_CREATOR CHAR(1),
    IS_VID_CONSUMER CHAR(1)
);


CREATE TABLE VIDEO_CREATORS (
    USERID int NOT NULL PRIMARY KEY,
    SUBSCRIBER_COUNT int,
    CONSTRAINT FK_UserCreator FOREIGN KEY (USERID)
    REFERENCES USERS(USERID)
);

CREATE TABLE VIDEO_CONSUMERS (
    USERID int NOT NULL PRIMARY KEY,
    SUBSCRIPTION_COUNT int,
    CONSTRAINT FK_UserConsumer FOREIGN KEY (USERID)
    REFERENCES USERS(USERID)
);


CREATE TABLE CHANNELS (
    CHANNELNAME varchar(255) NOT NULL PRIMARY KEY,
    CREATION_DATE DATE,
    OWNER_USER_ID int,
    CONSTRAINT FK_UserChannel FOREIGN KEY (OWNER_USER_ID)
    REFERENCES USERS(USERID)
);


CREATE TABLE VIDEOS (
    VIDEO_URL varchar(255) NOT NULL PRIMARY KEY,
    TITLE varchar(255),
    THUMBNAIL varchar(255),
    CATEGORY varchar(255),
    DESCRIPTION varchar(255),
    DURATION int,
    CHANNELNAME varchar(255),
    CONSTRAINT FK_ChannelVideo FOREIGN KEY (CHANNELNAME)
    REFERENCES CHANNELS(CHANNELNAME)
);


CREATE TABLE STATISTICS (
    VIDEO_URL varchar(255) NOT NULL PRIMARY KEY,
    LIKES int,
    DISLIKES int,
    VIEWS int,
    NUMBER_OF_SHARES int,
    NUMBER_OF_COMMENTS int,
    CONSTRAINT FK_VideoStatistics FOREIGN KEY (VIDEO_URL)
    REFERENCES VIDEOS(VIDEO_URL)
);


CREATE TABLE INFORMATIONAL_VIDEOS (
    VIDEO_URL varchar(255) NOT NULL PRIMARY KEY,
    KEYWORDS varchar(255),
    CONSTRAINT FK_VideoInfoVideo FOREIGN KEY (VIDEO_URL)
    REFERENCES VIDEOS(VIDEO_URL)
);

CREATE TABLE ENTERTAINMENT_VIDEOS (
    VIDEO_URL varchar(255) NOT NULL PRIMARY KEY,
    TAGS varchar(255),
    CONSTRAINT FK_VideoEntertainmentVideo FOREIGN KEY (VIDEO_URL)
    REFERENCES VIDEOS(VIDEO_URL)
);


CREATE TABLE COMMENTS (
    VIDEO_URL varchar(255) NOT NULL,
    COMMENT_ID int NOT NULL,
    COMMENTOR_ID int NOT NULL,
    COMMENT_TEXT varchar(255),
    LIKES int,
    SENTIMENT int,
    CONSTRAINT PK_Comments PRIMARY KEY (VIDEO_URL,COMMENT_ID),
    CONSTRAINT FK_UserComments FOREIGN KEY (COMMENTOR_ID)
    REFERENCES USERS(USERID),
    CONSTRAINT FK_VideoComments FOREIGN KEY (VIDEO_URL)
    REFERENCES VIDEOS(VIDEO_URL)
);


CREATE TABLE UPLOAD_REQUEST (
    VIDEO_URL varchar(255) NOT NULL,
    CHANNELNAME varchar(255) NOT NULL,
    UPLOADER_ID int NOT NULL,
    UPLOAD_DATE DATE,
    UPLOAD_TIME TIMESTAMP,
    CONSTRAINT PK_UploadRequest PRIMARY KEY (VIDEO_URL,CHANNELNAME,UPLOADER_ID),
    CONSTRAINT FK_VideoUpload FOREIGN KEY (VIDEO_URL)
    REFERENCES VIDEOs(VIDEO_URL),
    CONSTRAINT FK_ChannelUpload FOREIGN KEY (CHANNELNAME)
    REFERENCES CHANNELS(CHANNELNAME),
    CONSTRAINT FK_UserUpload FOREIGN KEY (UPLOADER_ID)
    REFERENCES USERS(USERID)
);

CREATE TABLE SPONSOR (
    VIDEO_URL varchar(255) NOT NULL,
    SPONSOR_ID int NOT NULL,
    NAME varchar(255),
    PHONE char(10),
    ADDRESS varchar(255),
    SPONSOR_AMOUNT int NOT NULL,
    CONSTRAINT PK_Sponsor PRIMARY KEY (VIDEO_URL,SPONSOR_ID),
    CONSTRAINT FK_VideoSponsor FOREIGN KEY (VIDEO_URL)
    REFERENCES VIDEOS(VIDEO_URL)
);


CREATE TABLE SUBSCRIBE (
    SUBCRIPTION_ID int NOT NULL,
    CHANNELNAME varchar(255) NOT NULL,
    SUBSCRIBER_ID int NOT NULL,
    SUBSCRIPTION_TYPE char(20),
    CONSTRAINT PK_Subscribe PRIMARY KEY (SUBCRIPTION_ID,CHANNELNAME,SUBSCRIBER_ID),
    CONSTRAINT FK_ChannelSubscribe FOREIGN KEY (CHANNELNAME)
    REFERENCES CHANNELS(CHANNELNAME),
    CONSTRAINT FK_UserSubscribe FOREIGN KEY (SUBSCRIBER_ID)
    REFERENCES USERS(USERID)
);

CREATE TABLE VIDEO_VIEWS (
    VIDEO_URL varchar(255) NOT NULL,
    USERID int NOT NULL,
    CONSTRAINT PK_View PRIMARY KEY (VIDEO_URL,USERID),
    CONSTRAINT FK_UserView FOREIGN KEY (USERID)
    REFERENCES USERS(USERID),
    CONSTRAINT FK_VideoView FOREIGN KEY (VIDEO_URL)
    REFERENCES VIDEOS(VIDEO_URL)
);

