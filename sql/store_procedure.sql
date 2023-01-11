 use hr;
 
 -- CHANGE DELIMITER FROM ; TO //
 DELIMITER //
 create procedure getAllCountries()
 Begin
	select * from countries limit 1;
    select * from countries limit 1,1;
 End //
 
 -- AGAIN CHANGE DELIMITER FOR DEFAULT i.e ;
 DELIMITER ;
 
 -- calling the procedure
call getAllCountries();


show create procedure getAllCountries;

show procedure status like 'getAllCountries';

-- IN parameter
DELIMITER //
create procedure getOfficeByCountry(IN countryName varchar(255))
Begin
	select * from countries where country_name = countryName;
end//
DELIMITER ;

call getOfficeByCountry('USA');


use classicmodels;
 -- stored function
 
 delimiter //
 create function prac_fun(
	first_name varchar(20),
    last_name varchar(20)
 )
 returns varchar(50)
 deterministic
 begin
	declare full_name varchar(50);
    set full_name = concat(first_name,' ',last_name);
    return (full_name);
 end //
 
 delimiter ;
 
 select prac_fun(firstName,lastName) as full_name from employees;
 
 
 select *  from information_schema.routines ;
 


use hr;
-- select * from employees
-- where hire_date between '1987-01-01' and '1988-06-01';

-- 1.
select concat(EmpFname,' ',EmpLname) as fullName from EmployeeInfo
where EmpFname like 'S%' and dob between '02-05-1970' and '31-12-1975';

-- 2.
select  Department,count(EmpID) as deptEmpCount
from EmployeeInfo
group by Department
having count(EmpID) < 2
order by deptEmpCount desc;

-- 3.
select  concat(ei.EmpFname,' ',ei.EmpLname) as full_name,ep.EmpPosition as position from EmployeeInfo ei
inner join EmployeePosition ep 
on ei.EmpID = ep.EmpID
where ep.EmpPosition = 'Manager';



