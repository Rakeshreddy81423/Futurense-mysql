
show columns from  dept;


select * from emp where job ='salesman';

select * from emp where sal > 2975;
select * from emp where job not like 'clerk';

select * from emp where deptno = 20 and job = 'clerk';

-- greater than 3000 not using >
select * from emp where not sal < 3000;

/* dont use like where = works */
select ename from emp where ename between 'james' and 'turner';


-- emp names with exactly 4 characters
update emp set job = 'hr_clerk' where job ='clerk';

