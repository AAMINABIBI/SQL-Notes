
use database tempdb;
select * from emp;
select * from dept;


select * from emp order by deptno asc , job desc;

select distinct job from emp order by job desc;

select* from emp where empno in(select mgr from emp);

select * from emp where hiredate<'01-jan-1981';

select empno,ename,sal,sal/30 dailysal from emp order by sal*12 asc;

select empno,ename,sal,exp from emp where mgr=7369;

select * from emp where comm >sal;

select * from emp where (sal/30)>100;

select * from emp where job in('clerk','analyst') order  by job desc;
select * from emp where job ='clerk' or job='analyst' order  by job desc;

select * from emp where hiredate in('1-may-1981','3-dec-1981','17-dec-1980','19-jan-1980') order by hiredate asc;

select * from emp where deptno in(10,20);

select * from emp where hiredate like '%81%';
select * from emp where hiredate between'01-jan-1981' and '31-dec-1981';


select * from emp where (sal*12) between 22000 and 45000;

select ename from emp where len(ename)=5;
select ename from emp where ename like'_____';

select ename from emp where ename like 's%' and len(ename)=5;

select * from emp where ename like '__r_' and len(ename)=4;

select * from emp where ename like 's%h' and len(ename)=5; 

select *   from emp where len(sal)=4 and sal like '___0';
select * from emp where len(sal)=4 and sal like'%0';


select * from emp where deptno<>20;

select * from emp where job not in('president','manager')order by sal desc;


select * from emp where job='clerk' and deptno=20;

select* from emp where ename ='smith';


select loc from emp e ,dept d where e.ename='smith' and e.deptno=d.deptno;

select * from emp e,dept d where e.deptno=d.deptno;

select * from emp where sal>(select sal from emp where ename='blake')
select * from emp where job=(select job from emp where ename ='allen')

select * from emp where hiredate <(select hiredate from emp where ename='king')

select * from emp where deptno=10 and job in(select job from emp where deptno=20)


select * from emp where sal in(select sal from emp where ename in('smith','ford')) order by sal desc;

select * from emp where sal>(select sal from emp where ename='allen') or job=
(select job from emp where ename ='miller')

select* from emp e, dept d where e.hiredate<(select e.hiredate from emp e where e.ename='blake') and d.loc in('chicago','boston') and e.deptno=d.deptno;

select * from emp where job in(select job from emp where ename in('smith','allen'))

select job from emp where deptno=10 and job not in(select job from emp where deptno=20 )


select max(sal)from emp;

select * from emp where sal in(select max(sal) from emp);

select * from emp where sal in(select max(sal) from emp where deptno in(select deptno from dept where dname='sales'))

select sum(sal) totalsal from emp where job='manager';

select avg(sal) from emp where job='clerk';


select * from emp where deptno=20 and sal>(select avg(sal) from emp where deptno=10)

select * from emp where empno in(select empno from emp where ename ='jones')
select * from emp where mgr in
(select empno from emp where ename = 'JONES'); 



select * from emp where (1.2*sal) >3000;

select * from emp e  ,dept d where d.deptno=e.deptno;

 select * from emp where deptno not in(select deptno from dept where dname ='sales')


 select e.ename ,e.job,d.deptno,d.loc from emp e,dept d where e.deptno=d.deptno and empno in (select mgr from emp)

 select * from emp where mgr in(select empno from emp where ename='jones')

 select e.ename,e.job, d.dname, d.loc from emp e,dept d where e.deptno=d.deptno and e.empno in(select mgr from emp)


 select ename,job from emp where mgr is null;


 select ename from emp where sal in(select max(sal) from emp group by deptno)

 select ename ,sal from emp where sal in(select ((select max(sal) from emp)+ (select min(sal) from emp))/2);
 select * from emp where sal =(select (max(Sal)+min(Sal))/2 from emp);

 select count(deptno) from emp group by deptno having count(*)>3;

