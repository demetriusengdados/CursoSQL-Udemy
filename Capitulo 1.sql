select * from emp;

select * from dept;

select id from t1;

select id from t10;

select job, sal
from (select job, max(sal) sal
		from emp
		group by job)x;
		
select ename
	from emp
where deptno = 10

select *
	from emp
	
select empno,ename,job,sal,mgr,hiredate,comm,deptno
	from emp
	
select *
	from emp
where deptno = 10

select * 
	 from emp
where deptno = 10
	or comm is not null
	or sal <= 2000 and deptno = 20
	
select *
	from emp
where ( deptno = 10
		or comm is not null
		or sal <= 2000
	)
	
	and deptno = 20	
	
	
select ename,deptno,sal
	from emp
	
select sal,comm
	from emp
	
select sal as salary, comm as commission
	from emp
where salary < 5000

select *
	from (
		select sal as salary, comm as commission
	from emp
		) x
where salary < 5000


select ename, job
	from emp
  where deptno = 10
  
select ename || 'WORKS AS A'|| jobs as msg
	from emp
where deotno = 10

select concat(ename, 'WORKS AS A', JOB) as msg
	from emp
where deptno = 10

select ename + 'WORKS AS A' job as msg
	from emp
where deptno = 10

select ename,sal,
	case when sal <= 2000 then 'UNDERPAID'
		 when sal >= 4000 then 'OVERPAID'
		 else 'OK'
	end as status
from emp

SELECT *
	FROM emp FETCH FIRST 5 ROWS ONLY
	
SELECT *
	 FROM emp LIMIT 5
	 

SELECT *
	FROM emp
	WHERE rownum <= 5
	
SELECT top 5 *
	FROM emp
	
SELECT ename, job
	FROM emp
	
SELECT ename, job
	FROM emp
	ORDER BY rand() FETCH FIRST 5 ROWS ONLY
	
SELECT ename, job
	FROM emp
	ORDER BY rand() LIMIT 5
	
SELECT ename, job
	 FROM emp
	 ORDER BY random() LIMIT 5
	 
SELECT *
	FROM (
	SELECT ename, job
		FROM emp
	ORDER BY dbms_random.value()
		)
WHERE rownum <= 5

SELECT top 5 ename, job
	FROM emp
ORDER BY newid()

SELECT *
	FROM emp
WHERE comm IS NULL

SELECT coalescer(comm, 0)
	FROM emp
	
SELECT CASE
	WHEN comm IS NOT NULL THEN comm
	ELSE 0
	END
FROM emp

SELECT ename, job
	FROM emp
WHERE deptno IN (10,20)

SELECT ename, job
	FROM emp
WHERE deptno IN (10,20)
	AND (ename LIKE '%I%' OR job LIKE '%ER')
	
	
end
