--Lab-10--

CREATE TABLE STUDENT_INFO
(
RNO INT,
NAME VARCHAR(50),
BRANCH VARCHAR(50),
SPI DECIMAL(4,2),
BKLOG INT
)
INSERT INTO STUDENT_INFO VALUES
(101,'RAJU','CE',8.80,0),
(102,'AMIT','CE',2.20,3),
(103,'SANJAY','ME',1.50,6),
(104,'NEHA','EC',7.65,1),
(105,'MEERA','EE',5.52,2),
(106,'MAHESH','EC',4.50,3)
SELECT*FROM STUDENT_INFO
--PART-A--
--Create a view Personal with all columns.CREATE VIEW	VW_PERSONALASSELECT* FROM STUDENT_INFO.--Create a view Student_Details having columns Name, Branch & SPI. CREATE VIEW	VW_STUDENT_DETAILSASSELECT NAME,BRANCH,SPI FROM STUDENT_INFO

--Create a view AcademicData having columns RNo, Name, Branch.

CREATE VIEW	VW_ACADEMICDATAASSELECT RNO,BRANCH,NAME FROM STUDENT_INFO

--Create a view Student_ bklog having all columns but students whose bklog more than 2

CREATE VIEW	VW_STUDENT_BKLOGASSELECT * FROM STUDENT_INFO
WHERE BKLOG>2

--Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four
--letters.

CREATE VIEW	VW_STUDENT_PATTERNASSELECT RNO,BRANCH,NAME FROM STUDENT_INFO
WHERE NAME LIKE '____'

--Insert a new record to AcademicData view. (107, Meet, ME)INSERT INTO VW_ACADEMICDATA VALUES(107,'MEET','ME')--Update the branch of Amit from CE to ME in Student_Details view

UPDATE VW_STUDENT_DETAILS
SET BRANCH ='ME'
WHERE NAME = 'AMIT'

--Delete a student whose roll number is 104 from AcademicData view.

DELETE VW_ACADEMICDATA
WHERE RNO = 104

--PART B

CREATE VIEW SPIABOVE AS SELECT *FROM STUDENT_INFO 
WHERE SPI>8.5
SELECT *FROM SPIABOVE

CREATE VIEW NOBACK AS SELECT *FROM STUDENT_INFO WHERE BKLOG=0
SELECT *FROM NOBACK

CREATE VIEW COMPUTERVIEW AS SELECT *FROM STUDENT_INFO 
WHERE BRANCH='CE'
SELECT *FROM COMPUTERVIEW


--PART C

CREATE VIEW RESULT_EC AS SELECT NAME,SPI FROM STUDENT_INFO 
WHERE SPI<5 AND BRANCH='EC'
SELECT*FROM RESULT_EC

UPDATE RESULT_EC SET SPI=4.90 WHERE NAME='MAHESH'
SELECT *FROM RESULT_EC

CREATE VIEW STU_BKLOG AS SELECT RNO,NAME,BKLOG FROM STUDENT_INFO
WHERE NAME LIKE 'M%' AND BKLOG>5
SELECT *FROM STU_BKLOG

DROP VIEW COMPUTERVIEW



