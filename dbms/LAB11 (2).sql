
----LAB 11

create table STU_INFO(
	RNO INT,
	NAME VARCHAR(10),
	BRANCH VARCHAR(5),
)

CREATE TABLE RESULT(
	RNO INT,
	SPI DECIMAL(5,2)
)

CREATE TABLE EMPLOYEE_MASTER(
	EMPLOYEENO VARCHAR(5),
	NAME VARCHAR(10),
	MANAGERNO VARCHAR(5)
)
DROP TABLE EMPLOYEE_MASTER

insert into STU_INFO values
(101,'RAJU','CE'),
(102,'AMIT','CE'),
(103,'SANJAY','ME'),
(104,'NEHA','EC'),
(105,'MEERA','EE'),
(106,'MAHESH','ME')


INSERT INTO RESULT VALUES
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)

INSERT INTO EMPLOYEE_MASTER VALUES
('E01','TARUN',NULL),
('E02','ROHAN','E02'),
('E03','PRIYA','E01'),
('E04','MILAN','E03'),
('E05','JAY','E01'),
('E06','ANJANA','E04')


----PART A

--Combine information from student and result table using cross join or Cartesian product.
select * from STU_INFO cross join RESULT

--Perform inner join on Student and Result tables.
select * from STU_INFO S inner join RESULT R on s.RNO=r.RNO    

-- Perform the left outer join on Student and Result tables.
select * from STU_INFO s left outer join RESULT r on s.rno = r.rno

--Perform the right outer join on Student and Result tables.
select * from stu_info s right outer join result r on s.rno = r.rno

-- Perform the full outer join on Student and Result tables.
select * from STU_INFO s full outer join RESULT r on s.rno = r.rno

-- Display Rno, Name, Branch and SPI of all students.
select s.rno, name, branch, spi from STU_INFO s full outer join RESULT r on r.RNO = s.RNO 

--Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select s.rno, name, branch, spi from stu_info s left outer join result r on s.rno = r.rno where BRANCH = 'ec'

--Display average result of each branch.
select avg(spi), branch from STU_INFO s join RESULT r on s.rno = r.rno group by branch

-- Display average result of CE and ME branch.
select avg(spi), branch from STU_INFO s join RESULT r on s.rno = r.rno group by BRANCH having BRANCH = 'me' and BRANCH = 'ce'


----PART B

--Display average result of each branch and sort them in ascending order by SPI.
select avg(spi),branch from stu_info s join result r on s.rno = r.RNO group by BRANCH order by avg(spi)

--Display highest SPI from each branch and sort them in descending order.select max(spi), branch from stu_info s join result r on s.rno = r.RNO group by BRANCH order by max(spi)

----PART C

--Retrieve the names of employee along with their manager’s name from the Employee table.
select e.name,r.name from employee_master e left outer join employee_master r on e.managerno = r.employeeno