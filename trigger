//main page
CREATE DATABASE bank;
USE bank;
CREATE TABLE customer2(custid INT,cname VARCHAR(20),accname VARCHAR(30),amnt INT);
INSERT INTO customer2 VALUES(1001,'ANJU','savings',50000);
INSERT INTO customer2 VALUES(1002,'ARYA','CURRENT',40000);
INSERT INTO customer2 VALUES(1003,'ARATHI','savings',100000);
INSERT INTO customer2 VALUES(1004,'GEETHA','current',30000);
CREATE TABLE gold1( gid INT,cname VARCHAR(20),categeory VARCHAR(30));
CREATE TABLE platinum1( gid INT,cname VARCHAR(20),categeory VARCHAR(30));
CREATE TABLE silver1( gid INT,cname VARCHAR(20),categeory VARCHAR(30));
select * from customer2;
select * from gold1;
select * from platinum1;
select * from silver1;
//trigger
CREATE DEFINER = CURRENT_USER TRIGGER `bank`.`customer2_AFTER_INSERT` AFTER INSERT ON `customer2` FOR EACH ROW
BEGIN
if(new.amnt>=50000)then
INSERT INTO gold1 set cid=new.gid,cname=new.cnmae,categeory="high level";
END IF;
if(new.amnt<=40000)then
INSERT INTO platinum1 set cid=new.gid,cname=new.cnmae,categeory ="Medium level";
END IF;
if(new.amnt<40000)then
INSERT INTO silver1 set cid=new.gid,cname=new.cnmae,categeory ="low level";
END IF;
END
