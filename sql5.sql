CREATE DATABASE groupb;
USE groupb;
CREATE TABLE salesman(Sid int(10) PRIMARY KEY NOT NULL,Sname VARCHAR(20) NOT NULL,City VARCHAR(20) NOT NULL, Commission VARCHAR(20) NOT NULL);
INSERT INTO salesman (Sid, Sname, City,Commission) VALUES(101, 'ANU', 'Mysore','10');
INSERT INTO salesman (Sid, Sname, City,Commission) VALUES(102, 'ANJU', 'Ooty','20');
INSERT INTO salesman (Sid, Sname, City,Commission) VALUES(103, 'SRUTHI', 'Bangalore','30');
INSERT INTO salesman (Sid, Sname, City,Commission) VALUES(104, 'NIMISHA', 'Mysore','10');
SELECT * FROM salesman;
CREATE TABLE customer2(Cid int(10) PRIMARY KEY NOT NULL,Cname VARCHAR(20) NOT NULL,City VARCHAR(20) NOT NULL, Grade INT(20) NOT NULL, Sid INT, FOREIGN KEY(Sid)REFERENCES salesman(Sid));
INSERT INTO customer2 (Cid, Cname, City,Grade,Sid) VALUES(201, 'NIMISHA', 'Mysore',100,101);
INSERT INTO customer2 (Cid, Cname, City,Grade,Sid) VALUES(202, 'DRISHYA', 'Bangalore',90,102);
INSERT INTO customer2 (Cid, Cname, City,Grade,Sid) VALUES(203, 'ARYA', 'Mysore',80,103);
INSERT INTO customer2 (Cid, Cname, City,Grade,Sid) VALUES(204, 'NIMI', 'Bangalore',100,104);
SELECT * FROM customer2;
CREATE TABLE Orders (Ord_No INT PRIMARY KEY NOT NULL , Purchase_Amt INT NOT NULL, Ord_Date DATE NOT NULL, Cid INT,FOREIGN KEY(Cid)REFERENCES Customer2(Cid), Sid INT,FOREIGN KEY(Sid)REFERENCES salesman(Sid)) ;
INSERT INTO Orders (Ord_No, Purchase_Amt,Ord_Date,Cid,Sid) VALUES(001, 250, '2022-03-19',204,104);
INSERT INTO Orders (Ord_No, Purchase_Amt,Ord_Date,Cid,Sid) VALUES(002, 350, '2022-02-09',203,103);
INSERT INTO Orders (Ord_No, Purchase_Amt,Ord_Date,Cid,Sid) VALUES(003, 550, '2022-03-29',202,102);
INSERT INTO Orders (Ord_No, Purchase_Amt,Ord_Date,Cid,Sid) VALUES(004, 150, '2022-03-15',201,101);
SELECT * FROM Orders;
SELECT Grade, COUNT(*) FROM Customer2 GROUP BY Grade HAVING Grade >(SELECT AVG(Grade)FROM Customer2 WHERE City = 'Bangalore');


