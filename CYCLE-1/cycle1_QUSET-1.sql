CREATE TABLE EMP
(
empno INT(2),
ename VARCHAR(25),
job VARCHAR(21),
salary INT(10),
commission INT(7),
deptno INT(2)
);
DESCRIBE EMP;
SELECT * FROM EMP;
DESCRIBE EMP;
INSERT INTO EMP(empno,ename,job,salary,deptno) VALUES('7369','SMITH','CLERK','800','20');
INSERT INTO EMP(empno,ename,job,salary,commission,deptno) 
VALUES('7499','ALLEN','SALESMAN','1600','300','30'),
('7521','WARD','SALESMAN','1250','500','30');
INSERT INTO EMP(empno,ename,job,salary,deptno) 
VALUES('7566','JONES','MANAGER','2975','20');
INSERT INTO EMP(empno,ename,job,salary,commission,deptno) 
VALUES('7654','MARTIN','SALESMAN','1250','1400','30');
INSERT INTO EMP(empno,ename,job,salary,deptno) 
VALUES('7698','BLAKE','MANAGER','2850','30'),
('7782','CLARK','MANAGER','2450','10'),
('7788','SCOTT','ANALYST','3000','20'),
('7839','KING','PRESIDENT','5000','10'),
('7844','TURNER','SALESMAN','1500','30'),
('7876', 'ADAMS','CLERK','1100','20'),
('7900','JAMES','NULL','950','30'),
('7902','FORD','ANALYST','3000','20');
INSERT INTO EMP(empno,ename,job,salary,deptno) 
VALUES ('7934','MILLER','CLERK','1300','10');

UPDATE EMP
SET job='CLERK' WHERE job='NULL';
ALTER TABLE EMP
ADD COLUMN date_join varchar(50);
SELECT * FROM EMP;
UPDATE EMP 
SET date_join='17-DEC-80' WHERE empno='7369';
SELECT * FROM EMP;
UPDATE EMP 
SET date_join='20-FEB-81' WHERE empno='7499';
UPDATE EMP 
SET date_join='22-FEB-81' WHERE empno='7521';
UPDATE EMP 
SET date_join='02-APR-81' WHERE empno='7566';
UPDATE EMP 
SET date_join='28-SEP-81' WHERE empno='7654';
UPDATE EMP 
SET date_join='01-MAY-81' WHERE empno='7698';
UPDATE EMP 
SET date_join='09-JUN-81' WHERE empno='7782';
UPDATE EMP 
SET date_join='19-APR-87' WHERE empno='7788';
UPDATE EMP 
SET date_join='17-NOV-81' WHERE empno='7839';
UPDATE EMP 
SET date_join='08-SEP-81' WHERE empno='7844';
UPDATE EMP 
SET date_join='23-MAY-87' WHERE empno='7876';
UPDATE EMP 
SET date_join='03-DEC-81' WHERE empno='7900';
UPDATE EMP 
SET date_join='03-DEC-81' WHERE empno='7902';
UPDATE EMP 
SET date_join='23-JAN-82' WHERE empno='7934';
SELECT * FROM EMP;
SELECT DISTINCT job FROM EMP;
SELECT ename,deptno FROM EMP WHERE deptno IN (20,30);
SELECT ename,(salary + IFNULL(commission, 0))  AS total_salary FROM EMP;
SELECT ename,salary*12 AS annual_salary FROM EMP;
SELECT ename,date_join FROM EMP WHERE date_join='03-DEC-81';
SELECT ename,(salary + IFNULL(commission, 0)) AS total_salary FROM EMP WHERE ename='MILLER';
SELECT ename,deptno FROM EMP;
DELETE FROM EMP WHERE ename='MILLER';
SELECT * FROM EMP_TAB;
ALTER TABLE EMP_TAB ADD COLUMN total_salary numeric;
UPDATE EMP_TAB SET total_salary=(salary + IFNULL(commission, 0));
ALTER TABLE EMP_TAB DROP COLUMN COMMISSION; 
SELECT E.ename,E.salary FROM EMP E INNER JOIN EMP B
ON E.salary= B.salary AND E.ename <> B.ename;
SELECT ename AS 'name', empno AS 'emp_id' FROM EMP;
ALTER TABLE EMP
RENAME TO EMPLOYEE;
SELECT * FROM EMPLOYEE;
CREATE TABLE EMP_TAB AS SELECT * FROM EMPLOYEE;
DESCRIBE EMP_TAB;
SELECT distinct e.empno,e.ename,e.job,e.salary,e.deptno,e.date_join,e.total_salary,
b.empno,b.ename,b.job,b.salary,b.deptno,b.date_join,b.total_salary FROM EMP_TAB e  JOIN 
EMPLOYEE b where e.empno=b.empno;
TRUNCATE TABLE EMPLOYEE;
DROP TABLE EMPLOYEE;







