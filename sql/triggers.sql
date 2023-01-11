use hr;

select * from employees;

create table emp_stats
(
	emp_count int
);
insert into emp_stats(select count(employee_id) from employees);

select * from emp_stats;


-- procedures will be available in
/*
informations.routines 

Exporting db
------------
tables/views/triggers can be exported but not routines with the following command

mysqldump -u root -p hr> hrdump.sql

to include routines

mysqldump -u root -p --routines hr > hrdump.sql


Importing sql files
-------
mysql -u root -p <database_name> < hrdump.sql

*/

create trigger incrementEmpCount
before insert on employees
for each row
update emp_stats
set emp_count = emp_count+1;


insert into employees values(209,'Rakesh1','Reddy1','ra@gmail.com','975424563','2022-09-10','IT_PROG',20000,0,100,60);
select * from emp_stats;

select * from employees;





show triggers;