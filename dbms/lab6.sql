---------------LAB 6------------------
----Display the result of 5 multiply by 30.SELECT 5 * 30

----Find out the absolute value of -25, 25, -50 and 50
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

----Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2), CEILING(25.7), CEILING(-25.7)

----Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2), FLOOR(25.7), FLOOR(-25.7)

----Find out remainder of 5 divided 2 and 5 divided by 3.SELECT 5%2 , 5%3

----Find out value of 3 raised to 2nd power and 4 raised 3rd power.SELECT POWER(3,2),POWER(4,3)

----Find out the square root of 25, 30 and 50
SELECT SQRT(25), SQRT(30), SQRT(50)

----Find out the square of 5, 15, and 25.
SELECT SQUARE(5), SQUARE(15), SQUARE(25)

----Find out the value of PI.
SELECT PI()

----Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2), ROUND(157.732,0), ROUND(157.732,-2)

----Find out exponential value of 2 and 3.
SELECT EXP(2), EXP(3)

----Find out logarithm having base e of 10 and 2.
SELECT LOG(10), LOG(2)

----Find out logarithm having base b having value 10 of 5 and 100.SELECT LOG10(5), LOG10(100)----Find sine, cosine and tangent of 3.1415.SELECT SIN(3.1415), COS(3.1415), TAN(3.1415)----Find sign of -25, 0 and 25.SELECT SIGN(-25), SIGN(0), SIGN(25)----Generate random number using function.SELECT RAND()----------PART B---------CREATE TABLE EMP_MASTER(	EMPNO INT,	EMPNAME VARCHAR(50),	JOININGDATE DATETIME,	SALARY DEC(8,2),	COMMISSION INT,	CITY VARCHAR(50),	DEPTCODE VARCHAR(20));INSERT INTO EMP_MASTER VALUES(101,'KEYUR','2002-01-5',12000,4500,'RAJKOT','3@g')INSERT INTO EMP_MASTER VALUES(102,'HARDIK','2004-02-15',14000,2500,'AHMEDABAD','3@')INSERT INTO EMP_MASTER VALUES(103,'KAJAL','2006-03-14',15000,3000,'BARODA','3-GD')INSERT INTO EMP_MASTER VALUES(104,'BHOOMI','2005-06-23',12500,1000,'AHMEDABAD','1A3D')INSERT INTO EMP_MASTER VALUES(105,'HARMIT','2004-02-15',14000,2000,'RAJKOT','312A')----Display the result of Salary plus Commission.SELECT *, SALARY + COMMISSION AS TOTAL_SALARY FROM EMP_MASTER----Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.SELECT CEILING(55.2), CEILING(35.7), CEILING(-55.2)----Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.SELECT FLOOR(55.2), FLOOR(35.7), FLOOR(-55.2)----Find out remainder of 55 divided 2 and 55 divided by 3.SELECT 55%2 , 55%3----Find out value of 23 raised to 2nd power and 14 raised 3rd power.SELECT POWER(23,2), POWER(14,3)---------PART C--------------Find out the square root of 36, 49 and 81.SELECT SQRT(36), SQRT(49), SQRT(81)----Find out the square of 3, 9, and 12.SELECT SQUARE(3), SQUARE(9), SQUARE(12)----Find out round value of 280.8952 for 2, 0 and -2 decimal points.SELECT ROUND(280.8952,2), ROUND(280.8952,0), ROUND(280.8952,-2)----Find sine, cosine and tangent of 4.2014.SELECT SIN(4.2014), COS(4.2014), TAN(4.2014)----. Find sign of -55, 0 and 95.SELECT SIGN(-55), SIGN(0), SIGN(95)--------------STRING FUNCTION--------------------- PART A------̄--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL),LEN('HELLO'),LEN('')


--2. Display your name in lower & upper case.
SELECT LOWER('ATMIK'),UPPER('atmik')

--3. Display first three characters of your name.
select left('atmik',3)

--4. Display 3rd to 10th character of your name.
select SUBSTRING ('ATMIK DUDHAGARA',3,8)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg','123','XYZ'),REPLACE('abcabcabc','C','5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('A'), ASCII('a'), ASCII('Z'), ASCII('z'), ASCII('0'), ASCII('9')

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT LTRIM('                    HELLO WORLD')

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
SELECT RTRIM('HELLO WORLD              ')

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CONVERT(DECIMAL,'1234.56')

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CONVERT(INT,10.58)

--13. Put 10 space before your name using function.
SELECT SPACE(10)+'ATMIK'

--14. Combine two strings using + sign as well as CONCAT ().
SELECT CONCAT('ATMIK','DUDHAGARA'),'ATMIK'+'DUDHAGARA'

--15. Find reverse of “Darshan”.
SELECT REVERSE('DARSHAN')

--16. Repeat your name 3 times.
SELECT REPLICATE('ATMIK',3)


-----PART B--------

--1. Find the length of FirstName and LastName columns.
SELECT LEN(FIRSTNAME),LEN(LASTNAME) FROM STUDENT

--2. Display FirstName and LastName columns in lower & upper case.
SELECT LOWER(FIRSTNAME),UPPER(LASTNAME) FROM STUDENT

--3. Display first three characters of FirstName column.
SELECT LEFT(FIRSTNAME,3) FROM STUDENT

--4. Display 3rd to 10th character of Website column.
SELECT SUBSTRING(WEBSITE,3,8) FROM STUDENT

--5. Write a query to display first 4 & Last 5 characters of Website column.
SELECT LEFT(WEBSITE,4),RIGHT(WEBSITE,4) FROM STUDENT

--PART C--
--1. Put 10 space before FirstName using function.\
SELECT SPACE(10)+FIRSTNAME FROM STUDENT

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
SELECT CONCAT(FIRSTNAME,LASTNAME) FROM STUDENT

--3. Combine all columns using + sign as well as CONCAT ().
SELECT CONCAT(STUID,FIRSTNAME,LASTNAME,WEBSITE,CITY,ADDRESS) FROM STUDENT

--4. Find reverse of FirstName column.
SELECT REVERSE(FIRSTNAME) FROM STUDENT

--5. Repeat FirstName column 3 times
SELECT REPLICATE(FIRSTNAME) FROM STUDENT

--6. Give the Names which contains 5 characters.
SELECT FIRSTNAME WHERE LEN(FIRSTNAME)=5

--7. Combine the result as <FirstName> Lives in <City>.
SELECT FIRSTNAME+'LIVES IN '+CITY FROM STUDENT

--8. Combine the result as Student_ID of < FirstName > is <StuID> .
SELECT FIRSTNAME+ ' IS ' +CAST(STUID AS VARCHAR)  FROM STUDENT

--DATE FUNCTION---

--PART A--
--1. Write a query to display the current date & time. Label the column Today_Date.
Select GETDATE()

--2. Write a query to find new date after 365 day with reference to today.
Select GETDATE() + 365

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
Select CONVERT(VARCHAR, GETDATE())

--4. Display the current date in a format that appears as 03 Jan 1995.
Select CONVERT(VARCHAR, GETDATE(),106)

--5. Display the current date in a format that appears as Jan 04, 96.
Select CONVERT(VARCHAR(20), GETDATE(),7)

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
Select DATEDIFF(MONTH,'2008-12-31','2009-03-31')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
Select DATEDIFF(YEAR, '2012/01/25','2010/09/14')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
Select DATEDIFF(HOUR, '2012-01-25 07:00', '2012-01-26 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
Select DAY('2016/05/12'), MONTH('2016/05/12'), YEAR('2016/05/12')

--10. Write a query that adds 5 years to current date.
Select DATEADD(YEAR, 5, GETDATE())

--11. Write a query to subtract 2 months from current date.
Select DATEADD(month, -2, GETDATE())

--12. Extract month from current date using datename () and datepart () function.
Select DATENAME(MONTH,GETDATE())
Select DATEPART(MONTH, GETDATE())

--13. Write a query to find out last date of current month.
Select EOMONTH(GETDATE())

--14. Write a query to display date & time after 30 days from today.
Select DATEADD(DAY, 30, GETDATE())