CREATE DATABASE HELLO;
USE HELLO;
CREATE TABLE ACTOR(ACT_ID INTEGER PRIMARY KEY, ACT_NAME VARCHAR(30) NOT NULL, ACT_GENDER VARCHAR(10) NOT NULL);
CREATE TABLE DIRECTOR( DIR_ID INTEGER PRIMARY KEY,DIR_NAME VARCHAR(30) NOT NULL, DIR_PHONE INTEGER);
CREATE  TABLE  MOVIES( MOV_ID INTEGER PRIMARY KEY,MOV_TITLE VARCHAR(30) NOT NULL, MOV_YEAR INTEGER NOT NULL, MOV_LANG VARCHAR(10),DIR_ID INTEGER REFERENCES DIRECTOR(DIR_ID)ON DELETE CASCADE);
CREATE TABLE MOVIE_CASTE( ACT_ID INTEGER REFERENCES ACTOR(ACT_ID)ON DELETE CASCADE,MOV_ID INTEGER REFERENCES MOVIES(MOV_ID)ON DELETE CASCADE,ROLE VARCHAR(30) NOT NULL);
CREATE TABLE RATING(MOV_ID INTEGER REFERENCES MOVIES(MOV_ID) ON DELETE CASCADE, REV_STARS INTEGER NOT NULL);
INSERT INTO ACTOR VALUES(1001,'MOHANLAL','MALE'); 
INSERT INTO ACTOR VALUES(1002,'DQ','MALE'); 
INSERT INTO ACTOR VALUES(1003,'NAMITHA','FEMALE'); 
INSERT INTO ACTOR VALUES(1004,'AISHWARAYALAKSHMI','FEMALE');
 INSERT INTO ACTOR VALUES(1005,'NIVIN','MALE');
INSERT INTO  DIRECTOR  VALUES(2001,'HITCHCOCK','9639639630'); 
INSERT INTO DIRECTOR VALUES(2002,'STEVEN SPIELBERG','8887779991'); 
INSERT INTO DIRECTOR VALUES(2003,'RAJMOULI','9995556662');
INSERT INTO DIRECTOR VALUES(2004,'LAL','9874569874'); 
INSERT INTO DIRECTOR VALUES(2005,'KAMAL','9874555780');
ALTER TABLE DIRECTOR MODIFY COLUMN DIR_PHONE BIGINT (10);
SELECT * FROM DIRECTOR;
TRUNCATE DIRECTOR;
INSERT INTO MOVIES VALUES(3001,'HELLO',2000,'MALAYALAM',2001);
INSERT INTO MOVIES VALUES(3002,'CIA',2015,'MALAYALAM',2002);
INSERT INTO MOVIES VALUES(3003,'ROLL MODELS',2018,'MALAYALAM',2001);
INSERT INTO MOVIES VALUES(3004,'ARCHANA 31 NOTOUT',2022,'MALAYALAM',2004);
INSERT INTO MOVIES VALUES(3005,'1983',2000,'MALAYALAM',2005);
INSERT INTO MOVIE_CASTE VALUES(1001, 

