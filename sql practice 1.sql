CREATE TABLE EMP
(EMPNO NUMERIC(4) NOT NULL,
ENAME VARCHAR(10),
JOB VARCHAR(9),
MGR NUMERIC(4),
HIREDATE DATETIME,
SAL NUMERIC(7, 2),
COMM NUMERIC(7, 2),
DEPTNO NUMERIC(2))

INSERT INTO EMP VALUES
(7369, 'SMITH', 'CLERK', 7902, '17-DEC-1980', 800, NULL, 20)
INSERT INTO EMP VALUES
(7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-1981', 1600, 300, 30)
INSERT INTO EMP VALUES
(7521, 'WARD', 'SALESMAN', 7698, '22-FEB-1981', 1250, 500, 30)
INSERT INTO EMP VALUES
(7566, 'JONES', 'MANAGER', 7839, '2-APR-1981', 2975, NULL, 20)
INSERT INTO EMP VALUES
(7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-1981', 1250, 1400, 30)
INSERT INTO EMP VALUES
(7698, 'BLAKE', 'MANAGER', 7839, '1-MAY-1981', 2850, NULL, 30)
INSERT INTO EMP VALUES
(7782, 'CLARK', 'MANAGER', 7839, '9-JUN-1981', 2450, NULL, 10)
INSERT INTO EMP VALUES
(7788, 'SCOTT', 'ANALYST', 7566, '09-DEC-1982', 3000, NULL, 20)
INSERT INTO EMP VALUES
(7839, 'KING', 'PRESIDENT', NULL, '17-NOV-1981', 5000, NULL, 10)
INSERT INTO EMP VALUES
(7844, 'TURNER', 'SALESMAN', 7698, '8-SEP-1981', 1500, 0, 30)
INSERT INTO EMP VALUES
(7876, 'ADAMS', 'CLERK', 7788, '12-JAN-1983', 1100, NULL, 20)
INSERT INTO EMP VALUES
(7900, 'JAMES', 'CLERK', 7698, '3-DEC-1981', 950, NULL, 30)
INSERT INTO EMP VALUES
(7902, 'FORD', 'ANALYST', 7566, '3-DEC-1981', 3000, NULL, 20)
INSERT INTO EMP VALUES
(7934, 'MILLER', 'CLERK', 7782, '23-JAN-1982', 1300, NULL, 10)

CREATE TABLE DEPT
(DEPTNO NUMERIC(2),
DNAME VARCHAR(14),
LOC VARCHAR(13) )

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK')
INSERT INTO DEPT VALUES (20, 'RESEARCH', 'DALLAS')
INSERT INTO DEPT VALUES (30, 'SALES', 'CHICAGO')
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON')

select * from emp;
select * from dept;
select distinct job from emp group by job;

select * from emp order by sal asc;

select * from emp order by DEPTNO asc , job desc;

select* from emp where job='manager';


select* from emp where hiredate<'01-jan-1981'

select empno,ename,sal,sal/30 dailysal from emp order by  sal*12 asc;

select* from emp where comm >sal;

select * from emp order by job asc;

select * from emp where job in('clerk','analyst') order by job desc;

select* from emp where deptno in ('10','20');

select* from emp where hiredate like '%1981%';


select * from emp where hiredate like '%aug-80';

select* from emp where sal*12 between 22000 and 45000;

select * from emp where ename like '_____'

select * from emp where ename like 's____'

select * from emp where ename like '__r_'

select * from emp where ename like 's___h'

select * from emp where hiredate like'%jan%';

select * from emp where sal like'___0'

select * from emp where hiredate like '%80%';

select * from emp where deptno<>20;

select * from emp where job not in('president','manager') order by sal asc;

select * from emp where hiredate not like '%81%'

select * from emp where empno not like '78%';

select * from emp where hiredate not like '%mar%';

select * from emp where deptno =20 and job='clerk';

select* from emp where deptno in(10,30) and hiredate like '%1981%';

select * from emp where ename ='smith';

Select dname from dept where deptno = 10 or deptno = 20 or deptno = 30;

