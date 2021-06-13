CREATE TABLE STUDENT_INFO(sid  INT UNIQUE ,stud_name   VARCHAR(20) NOT NULL,
      stude_score numeric(5,2) DEFAULT 20);

ALTER TABLE STUDENT_INFO ADD PRIMARY KEY (Sid);
DESCRIBE STUDENT_INFO;
INSERT INTO STUDENT_INFO VALUES(1,'NISHA',100,(2,'MARIYA',100),(3,'VARUN',200),
(4,'JOSEPH',180),(5,'RONA',90),
(6,'ASHLY',110),(7,'MINI',160);

UPDATE STUDENT_INFO SET stude_score = stude_score + 5 WHERE stude_score > 150;
SELECT *FROM STUDENT_INFO;
CREATE TABLE WORKER
    (
   worker_ID    INT PRIMARY KEY,
        first_name   VARCHAR(15),
        last_name    VARCHAR(15),
        salary       NUMERIC(8),
        joining_date DATE,
        department   VARCHAR (15)
      );

CREATE TABLE bonus
( worker_ID INT, bonus_date DATE, 
    bonus_amount NUMERIC(6));
    
ALTER TABLE bonus ADD CONSTRAINT fk_cod_csd 
      FOREIGN KEY(Worker_ID) REFERENCES 
     worker(Worker_ID) ON DELETE CASCADE ;
     
INSERT INTO worker VALUES (1,'monika','arora',100000,'2014-02-20','hr'),(2,'niharika','verma',80000,'2014-06-11','admin'),
(3,'vishal','singhal',300000,'2014-02-20','hr'),(4,'amithabh','singh',500000,'2014-02-20','admin'),
(5,'vivek','bhati',500000,'2014-06-11','admin'),
(6,'vipul','diwan',200000,'2014-06-11','account'),
(7,'satich','kumar',75000,'2014-01-20','admin');
INSERT INTO worker VALUES(8,'Geetika','Chauhan',90000,'2014-04-11','admin');
SELECT * FROM WORKER;

INSERT INTO bonus VALUES (1,'2016-02-20',5000),(2,'2016-06-11',3000),(3,'2016-02-20',4000),
(1,'2016-02-20',4500),(2,'2016-06-11',3500);
SELECT * FROM BONUS;
SELECT first_name AS WORKER_NAME FROM WORKER;

SELECT * FROM WORKER ORDER BY first_name ASC;

SELECT * FROM WORKER WHERE first_name NOT IN('vipul','satich');
SELECT * FROM WORKER WHERE department='admin';
SELECT * FROM WORKER WHERE salary BETWEEN 100000 AND 500000;
SELECT UPPER(first_name) FROM WORKER;
SELECT DISTINCT department FROM WORKER;
SELECT SUBSTR(first_name,1,3) FROM WORKER;
SELECT RTRIM(first_name) FROM WORKER;
SELECT LTRIM(department) FROM WORKER;
SELECT DISTINCT department,LENGTH(department) FROM WORKER;
SELECT REPLACE(first_name,'a','A') FROM WORKER;
SELECT  first_name,last_name,department,salary,bonus_amount  FROM WORKER,BONUS 
WHERE worker.worker_id = bonus.worker_id AND bonus_amount  > 4000;
DELETE from WORKER WHERE worker_id=7;
SELECT * FROM WORKER;
ALTER TABLE BONUS DROP CONSTRAINT fk_cod_csd;
ALTER TABLE BONUS ADD CONSTRAINT fk_cod_nwcon FOREIGN KEY(Worker_ID) 
REFERENCES WORKER(worker_ID) ON DELETE no action ;
DELETE FROM WORKER WHERE worker_id=8;
SELECT * FROM WORKER;
