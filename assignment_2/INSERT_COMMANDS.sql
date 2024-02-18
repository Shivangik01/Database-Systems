-- run all the insert commands together for livesql database.

INSERT INTO USERS
VALUES(1,'Taylor Swift','swift@gmail.com','3314 S Vermont Ave, US',27,'Y','Y');

INSERT INTO USERS
VALUES(2,'Apurva','abasapure@gmail.com','3514 S Vermont Ave',21,'Y','Y');

INSERT INTO USERS VALUES
(4, 'John Doe', 'johndoe@gmail.com', '123 Main St US', 25, 'Y', 'Y');

INSERT INTO USERS VALUES
(5, 'Jane Smith', 'janesmith@yahoo.com', '456 Broad Ave US', 30, 'N', 'Y');

INSERT INTO USERS VALUES
(6, 'Bob Johnson', 'bjohnson@hotmail.com', '789 Elm St US', 40, 'Y', 'Y');

INSERT INTO USERS VALUES
(3, 'Marvel Entertainment', 'me@gmail.com', '4563 Broad Lot US', 10, 'Y', 'Y');

INSERT INTO USERS VALUES
(7, 'Marvel Entertainment Ch2', 'mech2@hotmail.com', '789 Elm St US', 45, 'Y', 'Y');

INSERT INTO USERS VALUES
(8, 'Marvel Ch2', 'mech2@hotmail.com', '789 Elm St US', 45, 'Y', 'Y');


INSERT INTO CHANNELS VALUES
('Taylor Swift',TO_DATE('2023-01-01','YYYY-MM-DD'),1);

INSERT INTO CHANNELS VALUES
('Selena Gomez',TO_DATE('2023-01-01','YYYY-MM-DD'),2);

INSERT INTO CHANNELS VALUES
('Imagine Dragons', TO_DATE('2022-01-01','YYYY-MM-DD'), 4);

INSERT INTO CHANNELS VALUES
('Rahul Dua',  TO_DATE('2022-01-01','YYYY-MM-DD'), 6);

INSERT INTO CHANNELS VALUES
('Raviman Dua',  TO_DATE('2022-01-01','YYYY-MM-DD'), 5);

INSERT INTO CHANNELS VALUES
('Apurva Basapure',  TO_DATE('2022-04-01','YYYY-MM-DD'), 2);

INSERT INTO CHANNELS VALUES
('IRONMAN',  TO_DATE('2022-04-01','YYYY-MM-DD'), 3);

INSERT INTO CHANNELS VALUES
('MS MARVEL',  TO_DATE('2023-01-01','YYYY-MM-DD'), 3);

INSERT INTO CHANNELS VALUES
('CAPTAIN AMERICA',  TO_DATE('2020-04-01','YYYY-MM-DD'), 7);

INSERT INTO CHANNELS VALUES
('HULK',  TO_DATE('2023-01-01','YYYY-MM-DD'), 7);



INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/watch?v=b1kbLwvqugk', 'Anti-Hero', 'anti-hero.jpg', 'Entertainment', 'Written by Taylor Swift and Jack Antonoff', 309, 'Taylor Swift');

INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/watch?v=h8DLofLM7No', 'Lavender-Haze', 'LH.jpg', 'Entertainment', 'Written by Taylor Swift', 323, 'Taylor Swift');

INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/watch?v=b7QlX3yR2xs', 'Bejeweled', 'BJ.jpg', 'Entertainment', 'Written by Taylor Swift and Jewls', 423, 'Taylor Swift');

INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/c/ironmantriathlon', 'IRONMAN1', 'BJ1.jpg', 'Entertainment', 'ULTIMATE FUN', 593, 'IRONMAN');

INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/watch?v=m9EX0f6V11Y', 'MS MARVEL EPILOGUE', 'BJ2.jpg', 'Entertainment', 'THE END', 452, 'MS MARVEL');

INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/watch?v=S_c-vF0MMeQ', 'THE INCREDIBLE HULK', 'BJ3.jpg', 'Entertainment', 'STRONG HULK', 331, 'HULK');

INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/watch?v=pwsh4FjLavU', 'BACK STAGE SCENES', 'BJ4.jpg', 'Entertainment', 'FUN SHOTS', 231, 'HULK');

INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/watch?v=k33_vcxJMG4', 'THE INCREDIBLE HULK 2', 'BJ5.jpg', 'Entertainment', 'STRONG HULK 2', 341, 'HULK');

INSERT INTO VIDEOS
VALUES ('https://www.youtube.com/shorts/1iqyPCqdRsg', 'BACK STAGE SCENES 2', 'BJ6.jpg', 'Entertainment', 'FUN SHOTS 2', 531, 'HULK');



INSERT INTO UPLOAD_REQUEST
VALUES ('https://www.youtube.com/watch?v=S_c-vF0MMeQ', 'HULK', 7, TO_DATE('2023-02-01','YYYY-MM-DD'), CURRENT_TIMESTAMP);

INSERT INTO UPLOAD_REQUEST
VALUES ('https://www.youtube.com/watch?v=pwsh4FjLavU', 'HULK', 7, TO_DATE('2023-02-07','YYYY-MM-DD'), CURRENT_TIMESTAMP);

INSERT INTO UPLOAD_REQUEST
VALUES ('https://www.youtube.com/watch?v=k33_vcxJMG4', 'HULK', 7, TO_DATE('2023-02-14','YYYY-MM-DD'), CURRENT_TIMESTAMP);

INSERT INTO UPLOAD_REQUEST
VALUES ('https://www.youtube.com/shorts/1iqyPCqdRsg', 'HULK', 7, TO_DATE('2023-02-21','YYYY-MM-DD'), CURRENT_TIMESTAMP);



INSERT INTO COMMENTS
VALUES('https://www.youtube.com/watch?v=S_c-vF0MMeQ',1,2,'learnt a lot of science from this!',5,2);

INSERT INTO COMMENTS
VALUES('https://www.youtube.com/watch?v=pwsh4FjLavU',2,3,'i love math',4,5);

INSERT INTO COMMENTS
VALUES ('https://www.youtube.com/watch?v=k33_vcxJMG4',3,4,'good video to learn science',6,2);

INSERT INTO COMMENTS
VALUES ('https://www.youtube.com/shorts/1iqyPCqdRsg',4,5,'wonderful math taught',6,5); 



INSERT INTO STATISTICS
VALUES ('https://www.youtube.com/c/ironmantriathlon',1000,1232,2300,50,26);

INSERT INTO STATISTICS
VALUES ('https://www.youtube.com/watch?v=m9EX0f6V11Y',1012,132,22300,150,66);

INSERT INTO STATISTICS
VALUES ('https://www.youtube.com/watch?v=S_c-vF0MMeQ',1011,232,111230,506,56);

INSERT INTO STATISTICS
VALUES ('https://www.youtube.com/watch?v=pwsh4FjLavU',13400,2212,5355400,1530,286);

INSERT INTO STATISTICS
VALUES ('https://www.youtube.com/watch?v=b1kbLwvqugk',12300,1121,4045550,2530,836);

INSERT INTO STATISTICS
VALUES ('https://www.youtube.com/watch?v=h8DLofLM7No',14500,1243,2531400,5430,864);

INSERT INTO STATISTICS
VALUES ('https://www.youtube.com/watch?v=b7QlX3yR2xs',12100,122,4236100,5230,8);



INSERT INTO SPONSOR
VALUES ('https://www.youtube.com/watch?v=h8DLofLM7No', 1, 'Chase', '2136565432', '3335 S Figueroa St C', 7000);

INSERT INTO SPONSOR
VALUES ('https://www.youtube.com/watch?v=b7QlX3yR2xs', 2, 'Bofa', '2137895432', '5635 S Figueroa St C', 2000);

INSERT INTO SPONSOR
VALUES ('https://www.youtube.com/watch?v=b1kbLwvqugk', 1, 'Chase', '2136565432', '3335 S Figueroa St C', 1000);


INSERT INTO INFORMATIONAL_VIDEOS
VALUES('https://www.youtube.com/watch?v=S_c-vF0MMeQ','science');

INSERT INTO INFORMATIONAL_VIDEOS
VALUES('https://www.youtube.com/watch?v=pwsh4FjLavU','math');



INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=b1kbLwvqugk',1);

INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=h8DLofLM7No',2);

INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=b7QlX3yR2xs',3);

INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=b1kbLwvqugk',2);

INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=h8DLofLM7No',3);

INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=b7QlX3yR2xs',1);

INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=b1kbLwvqugk',3);

INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=h8DLofLM7No',4);

INSERT INTO VIDEO_VIEWS
VALUES('https://www.youtube.com/watch?v=b1kbLwvqugk',7);


