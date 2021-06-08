CREATE TABLE STUDENT
(
sid INT,
name VARCHAR(20),
dob DATE,
physics INT,
chemistry INT,
maths INT
);
DESCRIBE STUDENT;

INSERT INTO STUDENT(sid,name,dob,physics,chemistry,maths) VALUES(100,'mariya','1995-09-29',67,78,89),
(101,'manju','1998-09-22',87,76,79),
(102,'anumol','1996-01-18',98,79,90),
(103,'roselin','2000-04-23',85,56,45),
(104,'varun','1994-12-22',56,74,63);
SELECT * FROM STUDENT;
SELECT sid,name FROM STUDENT WHERE dob=(SELECT MAX(dob)FROM STUDENT);
SELECT * FROM STUDENT WHERE maths>=40 AND (physics >=40 OR chemistry >=40);
ALTER TABLE STUDENT
ADD COLUMN total INT;
ALTER TABLE STUDENT
ADD COLUMN average FLOAT(10,3);
DESCRIBE STUDENT;
SELECT * FROM STUDENT WHERE maths=(SELECT MAX(maths) FROM STUDENT);
SELECT * FROM STUDENT WHERE chemistry=(SELECT MIN(chemistry) FROM STUDENT);
UPDATE STUDENT SET total=physics+chemistry+maths;
SELECT * FROM STUDENT;
UPDATE STUDENT SET average=total/3;
SELECT * FROM STUDENT ORDER BY total DESC;
ALTER TABLE STUDENT 
RENAME COLUMN average TO avg_mark;
SELECT * FROM STUDENT;
SELECT AVG(avg_mark) AS  overall_average FROM STUDENT;
SELECT * FROM STUDENT WHERE avg_mark > (SELECT AVG(avg_mark) AS overall_average FROM STUDENT); 
SELECT COUNT(sid) from STUDENT where avg_mark>( SELECT AVG(avg_mark) AS overall_average FROM STUDENT);