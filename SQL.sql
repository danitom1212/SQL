






-----------------------------------------------------
SELECT FirstName,LastName FROM dbo.Employees
WHERE EmployeeID =3


-----------------------------------------------------

SELECT ProductName,UnitPrice FROM dbo.Products
WHERE ProductID =4

-----------------------------------------------------
SELECT DISTINCT  ProductID, ProductName,UnitPrice FROM dbo.Products
WHERE UnitPrice>20
ORDER BY UnitPrice ASC

-----------------------------------------------------

SELECT DISTINCT  FirstName+''+LastName,BirthDate,ReportsTo FROM dbo.Employees
WHERE ReportsTo=8
-----------------------------------------------------

SELECT DISTINCT EmployeeID,FirstName+''+LastName,BirthDate FROM dbo.Employees
WHERE City='LONDON'


-----------------------------------------------------

SELECT   ProductName , UnitPrice, 
	  "Price Range" =   
      CASE   
    
         WHEN UnitPrice  < 50 THEN 'ok' 
      WHEN UnitPrice  >100  THEN 'ok'
      END     
FROM  dbo.Products   
ORDER BY ProductName ;  
GO  

SELECT   ProductName , UnitPrice FROM  dbo.Products   
WHERE UnitPrice NOT between 100 AND 50
ORDER BY UnitPrice



-----------------------------------------------------

SELECT ProductName,UnitPrice FROM  dbo.Products 
	WHERE UnitPrice < 43.9 AND UnitPrice > 21.35
	ORDER BY UnitPrice DESC

	-----------------------------------------------------

SELECT DISTINCT EmployeeID,LastName,HireDate FROM dbo.Employees
WHERE City='LONDON' OR  City='TACOMA'

-----------------------------------------------------
SELECT 	EmployeeID,LastName,BirthDate,HireDate FROM  dbo.Employees
		WHERE City in ('LONDON','TACOMA')
		
		

		-----------------------------------------------------

SELECT 	EmployeeID,FirstName,LastName FROM  dbo.Employees
WHERE EmployeeID in (5,2,1)
-----------------------------------------------------
SELECT 	FirstName,LastName,BirthDate FROM  dbo.Employees
WHERE EmployeeID NOT IN (7,5,4)

-----------------------------------------------------
SELECT 	ProductID,ProductName,CategoryID FROM  dbo.Products
WHERE CategoryID NOT IN (7,2,1)
ORDER BY  CategoryID ASC



-----------------------------------------------------
SELECT 	EmployeeID,FirstName,Region FROM  dbo.Employees
	WHERE Region IS NULL
	
	-----------------------------------------------------


	
	
	SELECT top (3) p.ProductID  ,p.UnitPrice,p.ProductName
FROM Products p 
ORDER BY P.UnitPrice

-----------------------------------------------------


SELECT o.OrderID , o.OrderDate,o.RequiredDate
FROM DBO.Orders o
WHERE o.OrderDate > '1996-10-01' 




-----------------------------------------------------

SELECT EmployeeID,LastName,ReportsTo FROM DBO.Employees
WHERE ReportsTo is not null
ORDER BY  EmployeeID



-----------------------------------------------------



SELECT *FROM DBO.Categories

WHERE CategoryName LIKE '%o%'



-----------------------------------------------------


SELECT CompanyName,Country FROM DBO.Customers

WHERE companyName LIKE 'a%'






-----------------------------------------------------
SELECT ProductID,ProductName FROM DBO.Products

WHERE ProductName LIKE '%a[a-z]'


-----------------------------------------------------

SELECT OrderID,CustomerID,EmployeeID,OrderDate FROM DBO.Orders

WHERE OrderDate > '1997-04-01' AND 
    OrderDate < '1997-05-01'
	ORDER BY  OrderDate ASC
	
-----------------------------------------------------

SELECT OrderID,CustomerID,EmployeeID,OrderDate FROM DBO.Orders
	WHERE OrderDate > '1997-04-01' AND 
    OrderDate < '1997-05-01'
	ORDER BY  OrderDate DESC

	
-----------------------------------------------------

SELECT LOWER(FirstName),UPPER(LastName) ,EmployeeID FROM dbo.Employees
WHERE EmployeeID >2 AND EmployeeID<6 



-----------------------------------------------------
--a
SELECT  FirstName,CHARINDEX ('a',FirstName), EmployeeID FROM dbo.Employees
--b
SELECT  FirstName,CHARINDEX ('a',FirstName), EmployeeID FROM dbo.Employees
WHERE  CHARINDEX ('a',FirstName)=0
------------------------------------------------------
	
-----------------------------------------------------

SELECT c.CategoryName,c.Description FROM Categories c


SELECT c.CategoryName,CHARINDEX ('i',c.Description,4),c.Description FROM Categories c


-----------------------------------------------------


SELECT FirstName,LastName ,EmployeeID, LEFT(FirstName,3)+left(lastName,1) nickName FROM dbo.Employees


-----------------------------------------------------

SELECT ProductID ,ProductName, REPLACE(p.ProductName,'?','-')fROM Products p


-----------------------------------------------------
-----------------------------------------------------
select GETDATE()
-----------------------------------------------------
SELECT o.CustomerID, o.OrderID, o.OrderDate, DATEADD(dd, 45, o.OrderDate)
FROM Orders o
-----------------------------------------------------
SELECT e.FirstName,e.BirthDate ,DATEDIFF(yy,e.BirthDate,GETDATE())
FROM Employees e 
-----------------------------------------------------
SELECT e.FirstName,e.HireDate,DATENAME(WEEKDAY,e.HireDate),DATEPART(yy,e.hireDate)
FROM Employees e 
-----------------------------------------------------

SELECT p.ProductID,CEILING(p.UnitPrice*0.12)rond
FROM Products p
-------------------------------------------------------
SELECT CONVERT(varchar,e.EmployeeID)+'  '+e.LastName
FROM Employees e 

-------------------------------------------------------
SELECT UPPER(e.LastName) ,e.BirthDate
FROM Employees e 
where e.LastName LIKE 'K%' OR e.LastName LIKE 'D%'


---------------------------------------------------------

SELECT UPPER(e.LastName),CONVERT(date,e.BirthDate)
FROM Employees e
WHERE UPPER(SUBSTRING(e.LastName,1,1)) = 'D' OR UPPER(SUBSTRING(e.LastName,1,1)) = 'K'



-----------------------------------------------------

        
SELECT str(p.ProductID)+' and '+trim(str(p.SupplierID))proDUCT,FLOOR( p.UnitPrice*1.165)'FULL PRICE'

FROM Products P
WHERE P.UnitPrice*1.165>=40


-----------------------------------------------------








SELECT ProductIDSupplierID = CONVERT(varchar, p.ProductID) + ' AND ' + CONVERT(varchar,p.SupplierID),FullPrice = FLOOR(p.UnitPrice*1.165)
FROM Products p
WHERE FLOOR(p.UnitPrice*1.165) > 40


-----------------------------------------------------
SELECT LastNameANDLen =  e.LastName + str(len(e.LastName)),FirstNameANDLen =  e.FirstName + str(len(e.FirstName))
FROM Employees e


-----------------------------------------------------

-----------------------------------------------------
SELECT  e.LastName,REVERSE(e.LastName)nickname

FROM Employees e
where e.ReportsTo>0



-----------------------------------------------------
SELECT  o.OrderID, o.OrderDate,o.RequiredDate,DATEDIFF(mm,o.OrderDate,o.RequiredDate) FROM Orders o

-----------------------------------------------------














-----------------------------------------------------














-----------------------------------------------------






SELECT ABS(-1)-- UPPERcASE NUMBER

SELECT EXP(1)--EXP NUMBER 

SELECT CEILING(2.1)-- INTEGER TO UP
SELECT FLOOR(7.6)-- INTEGER TO DWON

SELECT LOG10(1000)-- 10*10*10
SELECT LOG(10)
SELECT POWER(2,4)--2*2*2*2=16\
SELECT ROUND( RAND()*31,0)
SELECT RAND(10)-- RANDOM NUMBER
SELECT SIGN(-10)-- SIGN OF NUMBER 
SELECT SQRT(25)--SQORT OF NUMBER 
SELECT SQUARE(6)--SQUARE THE NUMBER 
select SUBSTRING('anna',3,2)
----------------------------------------
--date
select DATEADD(MM,3,GETDATE())
select DATEADD(DD,3,GETDATE())
select DATEADD(YY,3,GETDATE())
select DATEDIFF(dd,'2021-11-11','2021-12-30')
select DATEPART(yy,'2021-11-11')


-----------------------------------------------------
--STRING
SELECT ASCII('A')--NUMBER OF THE CHAR A=65
AsciAt
SELECT CHAR(65)--CHAR OF THE NUMBER 65=A
CharAt


select CHARINDEX ('dal','abdala')--sring the index of first char we find

select CHARINDEX ('dal','abdaldal',4)--sring the index of first char we find stat in index we want
select LEFT('dani',3)--cut the string
select LEN ('daniel')--retun number of chars
SELECT UPPER('a')
SELECT LOWER('A')
SELECT REVERSE('DANI')--SQUARE THE NUMBER 

SELECT REPLACE('A','Aban','b')
SELECT RIGHT('Alex Mircha',1)
select DATALENGTH(' DANIEL'),
LEN(' DANIEL'),
LEN(TRIM(' DANIEL'))
SELECT TRIM(STR(100))+TRIM(STR(10))


--aggregate function

--avg price for all prices in table 
SELECT AVG(P.UnitPrice) AS avgp
FROM Products p

--avg for each category in products
SELECT c.CategoryName, 
	   AVG(P.UnitPrice) AS avgp,
	   MIN(P.UnitPrice) AS MINprice,
	   MAX(P.UnitPrice) AS MAXprice,
	   SUM(P.UnitPrice) AS SUMprice
FROM Products p ,Categories c
where p.CategoryID = c.CategoryID
GROUP by c.CategoryName
having AVG(P.UnitPrice) > 30
/*Group Ex

Ex1
*/
select e.lastName
FROM Employees e
order by ASCII(DATALENGTH(e.LastName)) ASC
SELECT MIN(e.LastName)
FROM Employees e
/*
Ex2
*/
SELECT MAX(e.LastName)
FROM Employees e
/*
Ex3
*/

select COUNT(e.EmployeeID)
FROM Employees e
/*
Ex4
*/
select COUNT(r.Region)
FROM Employees r 
WHERE r.Region not like 'null'


/*
Ex5
*/
select AVG(u.unitPRICE)
FROM Products u
/*
Ex6
*/
select MAX(u.unitPRICE) as maxP, AVG(u.unitPrice) as avgP
FROM Products u
/*
Ex7
*/
select MAX(e.BirthDate) as maxB, MIN(e.BirthDate) as minB
from Employees  e
/*
Ex8
*/
SELECT CONVERT(varchar, MAX(e.BirthDate), 113) AS MaxBirthDate, CONVERT(varchar, MIN(e.BirthDate), 113) AS MinBirthDate
FROM Employees e

/*
Ex9
*/
select COUNT(*) AS NUM
FROM Customers

SELECT C.CustomerID,Count(c.CustomerID)
FROM Customers c
group by c.CustomerID
/*
Ex9
*/
SELECT  O.CustomerID,C.CustomerID
FROM Orders o ,Customers c


SELECT Count(O.CustomerID) ,O.CustomerID
FROM Customers c,Orders o 
where C.CustomerID=o.CustomerID 
group by O.CustomerID 
/*
Ex10
*/

SELECT MIN(p.UnitPrice) as MinPrice, MAX(p.UnitPrice) as MaxPrice, AVG(p.UnitPrice) as AvgPrice
FROM Products p
GROUP BY P.CategoryID

/*
Ex11
*/

SELECT  max(P.UnitPrice) as MaxPrice, p.SupplierID 
FROM Products p, Suppliers S
GROUP BY ( P.SupplierID)
order by max(p.SupplierID) desc


/*
Ex12
*/
select AVG(p.unitsInStock) as maxaa ,p.SupplierID
from products p
GROUP BY ( P.SupplierID)
order by max(p.SupplierID) desc

/*
Ex13
*/
SELECT  Count(c.CustomerID ),c.City,c.Country
FROM Customers c
group by (c.Country),(c.City)

/*
Ex14
*/
select avg(p.unitPrice),p.CategoryID
from Products p
where p.unitPrice>40
group by p.CategoryID
/*
Ex15
*/

SELECT c.City, Count(c.CustomerID)
FROM Customers c
WHERE C.City LIKE 'LONDON'
GROUP BY c.City
/*
Ex16
*/
SELECT MIN(p.UnitPrice) as MinPrice,
	   MAX(p.UnitPrice) as MaxPrice,
	   AVG(p.UnitPrice) as AvgPrice, 
	   count(p.ProductID)
FROM Products p
GROUP BY p.CategoryID , p.SupplierID
/*
Ex17
*/
SELECT MAX(p.UnitPrice) as MaxPrice
FROM Products p
WHERE p.UnitPrice > 40
GROUP BY p.CategoryID

/*
Ex18
*/
select avg(p.unitPrice),p.SupplierID
from Products p
WHERE p.UnitPrice >39
group by p.SupplierID
order by avg(p.unitPrice) asc
/*
Ex19
*/
SELECT C.CategoryName, SUM(P.UnitsOnOrder) , SUM(P.UnitsInStock)
FROM Products p , Categories c 
WHERE C.CategoryID = P.CategoryID AND c.CategoryName LIKE '%C%' 
GROUP BY C.CategoryName
HAVING SUM(P.UnitsOnOrder) > 100
ORDER BY C.CategoryName
/*
Ex19
*/
/* NEW 18-11-21

UNION == ADD ONLY WHAT NOT SHOW ON each question
what is the same in 2 question not count Twice (ALL BETWEEN 10 TO 35)
*/
SELECT P.ProductID , P.ProductName ,P.UnitPrice
FROM Products p
WHERE P.UnitPrice BETWEEN 10 AND 30 
UNION
SELECT P.ProductID , P.ProductName,P.UnitPrice
FROM Products p
WHERE P.UnitPrice BETWEEN 15 AND 35
/*
INTERSECT == SHOW what is the same in 2 question (BETWEEN 15 TO 30 )
*/
SELECT P.ProductID , P.ProductName
FROM Products p
WHERE P.UnitPrice BETWEEN 10 AND 30 
INTERSECT
SELECT P.ProductID , P.ProductName
FROM Products p
WHERE P.UnitPrice BETWEEN 15 AND 35
/*
EXCEPT == SHOW ONLY what between start question 1 TO START question 2 (10 to 15)
*/
SELECT P.ProductID , P.ProductName
FROM Products p
WHERE P.UnitPrice BETWEEN 10 AND 30 
EXCEPT
SELECT P.ProductID , P.ProductName
FROM Products p
WHERE P.UnitPrice BETWEEN 15 AND 35



Create Table doom (x int)
go
Create Table boom (y int)
go

Insert Into doom values(4),(6),(9),(2),(10),(11)
Insert Into boom values(2),(3),(8),(11),(13)

SELECT * FROM doom
SELECT * FROM boom

SELECT X from doom
UNION all
SELECT y from boom

----intersect = החלק שמשוץף גם לקבוצה A
-- וגם לקבוצהB
--מוצב רק פעם אחת

select x from doom 
intersect 
select y from boom

--exsept 
-- a\b= כול מה שנמצא בeבוצה B 
-- ולא בקבוצה A

select x from doom 
EXCEPT
select y from boom






select y from boom
EXCEPT
select x from doom




-------------------
SELECT P.ProductID , P.ProductName
FROM Products p
WHERE P.UnitPrice BETWEEN 0 AND 30 
EXCEPT
SELECT P.ProductID , P.ProductName
FROM Products p
WHERE P.UnitPrice BETWEEN 15 AND 35

--------------------------------

SELECT P.ProductID , P.ProductName , p.UnitPrice
FROM Products p
WHERE P.UnitPrice BETWEEN 10 AND 40 
UNION
SELECT P.ProductID , P.ProductName, p.UnitPrice
FROM Products p
WHERE P.ProductName BETWEEN 'a' AND 'f'



--------------------------------

SELECT P.ProductID , P.ProductName , p.UnitPrice, P.UnitsInStock
FROM Products p
WHERE P.UnitPrice BETWEEN 20 AND 100
intersect 
SELECT P.ProductID , P.ProductName, p.UnitPrice, P.UnitsInStock
FROM Products p
WHERE P.ProductName BETWEEN 'g' AND 'z'
intersect 
SELECT P.ProductID , P.ProductName, p.UnitPrice, P.UnitsInStock
FROM Products p
WHERE P.UnitsInStock > 10


--------------------------------
SELECT P.ProductID , P.ProductName , p.UnitPrice, P.UnitsInStock
FROM Products p
WHERE P.UnitPrice BETWEEN 50 AND 200
intersect 
SELECT P.ProductID , P.ProductName, p.UnitPrice, P.UnitsInStock
FROM Products p
WHERE P.ProductName not BETWEEN 'a' AND 'j'





---------------------------------------------
--1
drop table MyProducts 
--2
create  table MyProducts  (
prodid int primary key,
prodname1 varchar(80),
unityPrice money,
unitsInStock smallint,
salary Money default 3500)

--3
insert into MyProducts
values(1,'bread',6.10,120,2)
--4
select * from MyProducts
------------------------------------

Create table my_employees(
id int PRIMARY KEY ,
name Varchar(50),
title VARCHAR (50),
deptid INT,
salary MONEY DEFAULT 3500)

insert into my_employees
			(id,name,title,deptid,salary)
	values(1,'Aviv Cohen','Clerk',10,4000),
	(2,'Miram levi','Sales manager',20,3750),
	(3,'AION Romano','Operation Manager',30,null),
	(4,'Baruch Nave',NULL,30,3500),
	(5,'Danny Salamon','Sales Representative',20,7000)
	
	
	select * from my_employees

update my_employees set
salary = 4500
where id=2

	
select * from my_employees


update my_employees set
name= 'dani',
 deptid=20
where id=4 
	
select * from my_employees

update my_employees set
deptid=10
where deptid=30
select * from my_employees

delete my_employees 
where name='AION ROMANO'
select * from my_employees



insert into my_employees
			(id,name,title,deptid,salary)
	values(1,'Aviv Cohen','Clerk',10,4000),
		  (2,'Miram levi','Sales manager',20,3750),
		  (3,'AION Romano','Operation Manager',30,null),
		  (4,'Baruch Nave',NULL,30,3500),
		  (5,'Danny Salamon','Sales Representative',20,7000)

select * from my_employees



--1

select p.UnitPrice
from Products p
where p.unitPrice<
(select p.unitPrice
from Products p
where p.ProductID=8)

--2
select p.UnitPrice
from Products p
where p.unitPrice>
(select p.unitPrice
from Products p
where p.ProductName='tofu')

--3

select e.FirstName,e.HireDate
from Employees e
where e.HireDate>
(select e.HireDate
from Employees e
where e.EmployeeID=6)


--4
select p.ProductID,p.ProductName,p.UnitPrice
from Products p
where p.unitPrice>
(select avg(p.unitPrice)
from Products p
)


--5
select p.ProductName,p.UnitsInStock
from Products p
where p.UnitsInStock<
(select min(p.UnitsInStock)
from Products p
where p.CategoryID=5
)

--6

select *
from Products p
where p.CategoryID=
(select p.CategoryID
from Products p
where p.ProductName='chai')and p.ProductName<>'chai'

--7
select p.ProductName,p.UnitPrice,p.CategoryID
from Products p
where p.UnitPrice in
(select p.UnitPrice
from Products p
where p.CategoryID=5
)

--8
select p.ProductName,p.UnitPrice,p.CategoryID
from Products p
where p.UnitPrice in
(select min(p.UnitPrice)
from Products p
where p.CategoryID=5
)

--9

select p.ProductName,p.UnitPrice,p.CategoryID
from Products p
where p.UnitPrice >
(select max(p.UnitPrice)
from Products p
where p.CategoryID=5
)

--10


select o.OrderID,o.OrderDate
from Orders o
where o.CustomerID in
(select c.CustomerID
from Customers c
where c.Country in( 'France' , 'Germany','Sweden'))
and YEAR (o.OrderDate)=1997


--11
select p.ProductName,p.ProductID 
from Products p
where p.UnitPrice >
(select avg(p.UnitPrice)
from Products p
where p.UnitsInStock>50
)


--12
select p.ProductName
from Products p ,Categories c,Suppliers s
where
p.CategoryID = c.CategoryID and
p.SupplierID = s.SupplierID and 
s.Region is null and 
c.CategoryName in ('Beverages','Condiments')



select p.ProductName
from products p
where p.categoryID in
(select  c.CategoryID
from Categories c
where c.CategoryName in ('Beverages','Condiments'))
and p.SupplierID in 
(select s.supplierID
from Suppliers s
where s.Region is null)



--13


select s.CompanyName
from Suppliers s
where s.SupplierID in
(select p.SupplierID
from products p
where p.CategoryID in 
(select  c.CategoryID
from Categories c
where c.CategoryName = 'Beverages'))

select s.CompanyName
from Products p ,Categories c,Suppliers s
where
p.CategoryID = c.CategoryID and
p.SupplierID = s.SupplierID and 
c.CategoryName in ('Beverages')


/*
Ex1
*/

CREATE VIEW vm_empDatails AS
SELECT e.EmployeeID,
	   e.FirstName,
	   e.LastName,
	   e.HomePhone
FROM dbo.Employees e
GO

SELECT * FROM vm_empDatails


CREATE VIEW vm_empDatails1 AS 
SELECT e.EmployeeID,
	   e.FirstName,

	   e.HomePhone
FROM dbo.Employees e
GO


SELECT * FROM vm_empDatails1

/*
Ex1
*/




SELECT * FROM vm_empDatails1

Create Table saleman (y int)
go

Insert Into doom values(4),(6),(9),(2),(10),(11)


SELECT * FROM 
/*
Ex2
*/
CREATE VIEW vm_empDatails AS
SELECT e.EmployeeID,
	   e.FirstName,
	   e.LastName,
	   e.HomePhone
FROM dbo.Employees e
GO

SELECT * FROM vm_empDatails
















/*
Ex1
*/
Create Table SalesMen (salesman_id int,Name VARCHAR(50), city VARCHAR(80), commission DECIMAL (4,2) )
go

Insert Into SalesMen (salesman_id, Name, city, commission)
values
(5001, 'James Hoog' , 'New York', 0.15),
(5002, 'Nail Knite' , 'Paris', 0.13),
(5005, 'Pit Alex' , 'London', 0.11),
(5006, 'Mc Lyon' , 'Paris', 0.14),
(5007, 'Paul Adam' , 'Rome', 0.13),
(5003, 'Lauson Hen' , 'San Jose', 0.12)

Select * FROM dbo.SalesMen

/*
Ex2
*/
CREATE VIEW ParisSalesMen AS
SELECT *
FROM dbo.SalesMen s
WHere s.city = 'Paris'
GO

select * from ParisSalesMen
/*
Ex3
*/
CREATE VIEW HighCommSalesMe AS
SELECT *
FROM dbo.SalesMen s
WHere s.commission > 0.13
GO



/*
Ex4
*/

select * from ParisSalesMen

CREATE VIEW AISalesMen3  AS
SELECT *
FROM dbo.SalesMen s
WHere s.Name Like '%a%' OR s.Name = '%i%'
GO

select * from AISalesMen3


/*

Ex5
*/
CREATE VIEW AISalesMen5  AS
SELECT *
FROM dbo.AISalesMen3 s
WHere s.commission > 0.11
GO

select * from AISalesMen5
/*
Ex6
*/
WITH cte_commission AS
(
SELECT *
FROM dbo.AISalesMen3 s
WHere s.commission > 0.11
)
SELECT *
FROM cte_commission/