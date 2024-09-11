-----LAB 12


--PART A

--Find all persons with their department name & code.
select personname, departmentname, departmentcode from person p full outer join dept d on d.departmentid = p.departmentid 

--Find the person's name whose department is in C-Block.
select personname from person p join dept d on p.departmentid = d.departmentid where location = 'c-block'

--Retrieve person name, salary & department name who belongs to Jamnagar city.
select personname, salary, departmentname from person p join dept d on d.departmentid = p.departmentid where city = 'jamnagar' 

--Retrieve person name, salary & department name who does not belong to Rajkot city.
select personname, salary, departmentname from person p join dept d on p.departmentid = d.departmentid where city != 'rajkot'

--Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
select personname, joiningdate from person p join dept d on d.departmentid = p.departmentid where departmentname = 'civil' and joiningdate > '2001-08-01'

--Find details of all persons who belong to the computer department.
select * from person p join dept d on p.departmentid = d.departmentid where departmentname = 'computer'

--Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
select personname, departmentname from person p full outer join dept d on d.departmentid = p.departmentid where joiningdate < (getdate()-365)

--Find department wise person counts.
select departmentname, count(personname) from person p join dept d on d.departmentid = p.departmentid group by departmentname

--Give department wise maximum & minimum salary with department name.
select max(salary), min(salary), departmentname from person p join dept d on d.departmentid  = p.departmentid group by departmentname

--Find city wise total, average, maximum and minimum salary.
select sum(salary) as total, avg(salary) as average, max(salary) as max, min(salary) as min from person p join dept d on p.departmentid= d.departmentid group by city

--Find the average salary of a person who belongs to Ahmedabad city.
select avg(salary) from person where city = 'ahmedabad'

--Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
select personname + ' lives in ' + city + ' and works in ' + departmentname + ' department.' from person p full outer join dept d on d.departmentid = p.departmentid 


----PART - B

--Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In single column)
select personname + ' earns ' + cast(salary as varchar) + ' from ' + departmentname + ' department monthly. ' from dept d join person p on d.departmentid = p.departmentid

--Find city & department wise total, average & maximum salaries.
select sum(salary) as total, avg(salary) as average, city, departmentname from person p join dept d on d.departmentid = p.departmentid group by city,departmentname

--Find all persons who do not belong to any department.
select personname from person p full outer join dept d on d.departmentid = p.departmentid where d.departmentid is null

--Find all departments whose total salary is exceeding 100000.
select sum(salary), departmentname from dept d join person p on d.departmentid = p.departmentid group by departmentname having sum(salary) > 100000 


----PART - C

--List all departments who have no person.
select departmentname from person p full outer join dept d on d.departmentid = p.departmentid where p.departmentid is null

--List out department names in which more than two persons are working.
select departmentname, count(personname) from dept d join person p gourp by departmentname having count(personname) > 2

--Give a 10% increment in the computer department employee’s salary. (Use Update)
update person set salary = salary*1.1 from person join dept on dept.departmentid = person.departmentid  where departmentname = 'computer'