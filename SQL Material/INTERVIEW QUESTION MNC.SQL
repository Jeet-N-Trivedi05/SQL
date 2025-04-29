CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Product VARCHAR(255),
    Category VARCHAR(100)
);

INSERT INTO Products (ProductID, Product, Category)
VALUES
    (1, 'Laptop', 'Electronics'),
    (2, 'Smartphone', 'Electronics'),
    (3, 'Tablet', 'Electronics'),
    (4, 'Headphones', 'Accessories'),
    (5, 'Smartwatch', 'Accessories'),
    (6, 'Keyboard', 'Accessories'),
    (7, 'Mouse', 'Accessories'),
    (8, 'Monitor', 'Accessories'),
    (9, 'Printer', 'Electronics');
   



WITH CTE AS (
SELECT *, ROW_NUMBER() OVER(PARTITION BY Category ORDER BY ProductID ) AS RN1,
ROW_NUMBER() OVER(PARTITION BY Category ORDER BY ProductID DESC ) AS RN2
FROM  Products p 
)
SELECT 
C1.ProductID,
C2.Product,
C2.Category
FROM CTE C1, CTE C2 
WHERE C1.RN1 = C2.RN2 
AND C1.CATEGORY = C2.CATEGORY
ORDER BY 3 DESC


---------------------------------------------------------------------
drop table Flights ;

CREATE TABLE Flights
(
    cust_id INT,
    flight_id VARCHAR(10),
    origin VARCHAR(50),
    destination VARCHAR(50),
    flight_time datetime
);

-- Insert data into the table
INSERT INTO Flights
    (cust_id, flight_id, origin, destination, flight_time)
VALUES
    (1, 'SG1234', 'Delhi', 'Hyderabad', '2024-04-01 08:00:00'),
    (1, '69876', 'Hyderabad', 'Kochi', '2024-04-01 12:00:00'),
    (1, 'SG3476', 'Kochi', 'Mangalore', '2024-04-01 16:00:00'),
    (2, '68749', 'Mumbai', 'Varanasi', '2024-04-02 09:00:00'),
    (2, 'SG5723', 'Varanasi', 'Delhi', '2024-04-02 14:00:00');

 
 
SELECT * from Flights f;


WITH CTE AS (
SELECT *, 
ROW_NUMBER() over(PARTITION BY CUST_ID ORDER BY FLIGHT_TIME DESC) AS ARIVAL,
ROW_NUMBER() over(PARTITION BY CUST_ID ORDER BY FLIGHT_TIME) AS DEPT 
FROM Flights f
)
SELECT C1.CUST_ID,C1.origin,C2.destination,C2.DEPT 
FROM CTE C1, CTE C2
WHERE C1.CUST_ID = C2.CUST_ID
AND C1.DEPT = 1 AND C2.ARIVAL = 1
 
-----------------------------------------------------------------------------------------------
 

Drop table if EXISTS Revenue;
CREATE TABLE Revenue (
    Company NVARCHAR(10),
    Year INT,
    Value INT
);


INSERT INTO Revenue (Company, Year, Value)
VALUES 
    ('x', 2020, 100),
    ('x', 2021, 90),
    ('x', 2022, 120),
    ('y', 2020, 100),
    ('y', 2021, 100),
    ('z', 2020, 100),
    ('z', 2021, 120),
    ('z', 2022, 130);
  
   
SELECT *,
COALESCE (LAG(VALUE,1) OVER(PARTITION  BY COMPANY ORDER BY(SELECT NULL)),0)
AS LAGGED_VALUE,
(VALUE - (COALESCE (LAG(VALUE,1) OVER(PARTITION  BY COMPANY ORDER BY(SELECT NULL)),0))) AS PROFITLOSS 
FROM Revenue r;


-------------------------------------------------------------------------------------------


create table students(sname varchar(50), sid varchar(50), marks int)

insert into students values('A','X',75),('A','Y',75),('A','Z',80),('B','X',90),('B','Y',91),('B','Z',75)

SELECT * FROM students s;


WITH CTE2 AS (
	WITH CTE AS (
		SELECT *, 
		RANK() OVER(PARTITION BY sname ORDER BY MARKS DESC) AS RANKS
		FROM students s 
	)
	SELECT * FROM CTE C
	GROUP BY C.SNAME, C.RANKS
	HAVING C.RANKS <=2
)
SELECT C2.SNAME,SUM(MARKS) FROM CTE2 C2
GROUP BY C2.SNAME

--------------------------------------------------------------------------------------

SELECT * FROM Employee_Data_for_Window_Functions edfwf
where name like '%a'


SELECT *,
SUBSTRING_INDEX(Name," ",1) as first_name,
SUBSTRING_INDEX(Name," ",-1) as last_name
from Employee_Data_for_Window_Functions edfwf 

ALTER table Employee_Data_for_Window_Functions 
add column First_Name varchar(100);
UPDATE  Employee_Data_for_Window_Functions 
set First_Name = SUBSTRING_INDEX(name," ",1) 

SELECT  * from Employee_Data_for_Window_Functions edfwf 

-- strat with A
SELECT * from Employee_Data_for_Window_Functions edfwf 
where First_Name like "A%" 

-- ends with a
SELECT * from Employee_Data_for_Window_Functions edfwf 
where First_Name like "%A"

-- starts with A and ends with A
SELECT * from Employee_Data_for_Window_Functions edfwf 
where First_Name like "A%" and First_Name like "%A"

SELECT * from Employee_Data_for_Window_Functions edfwf 
where First_Name like "A%A"

-- name contians Z
SELECT * from Employee_Data_for_Window_Functions edfwf 
where First_Name like '%z%'

-- 4th char is z
SELECT * from Employee_Data_for_Window_Functions edfwf 
where First_Name like "___z%"


---------------------------------------------------------------------------------

CREATE TABLE Flights2
(
    cust_id INT,
    flight_id VARCHAR(10),
    origin VARCHAR(50),
    destination VARCHAR(50)
);

-- Insert data into the table
INSERT INTO Flights2
    (cust_id, flight_id, origin, destination)
VALUES
    (1, 'SG1234', 'Delhi', 'Hyderabad'),
    (1, '69876', 'Hyderabad', 'Kochi'),
    (1, 'SG3476', 'Kochi', 'Mangalore'),
    (2, '68749', 'Mumbai', 'Varanasi'),
    (2, 'SG5723', 'Varanasi', 'Delhi');

 
    
SELECT * from Flights2 f2;

SELECT * FROM Flights2 f1
LEFT JOIN Flights2 f2
ON F1.CUST_ID = F2.cust_id 
AND F1.origin = F2.destination ;


SELECT F1.CUST_ID,F1.ORIGIN FROM Flights2 f1
LEFT JOIN Flights2 f2
ON F1.CUST_ID = F2.cust_id 
AND F1.origin = F2.destination 
WHERE F2.origin IS NULL


SELECT F1.CUST_ID,F1.destination FROM Flights2 f1
LEFT JOIN Flights2 f2
ON F1.CUST_ID = F2.cust_id 
AND F1.destination = F2.origin  
WHERE F2.destination IS NULL
























