-- 0. CREATING A TABLE 

CREATE TABLE practice_data (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    city VARCHAR(50),
    country VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE,
    status ENUM('Active', 'Inactive', 'Pending')
);

SELECT * from practice_data pd 

-- id|first_name|last_name|email|age|city|country|salary|join_date|status|
-- --+----------+---------+-----+---+----+-------+------+---------+------+

INSERT INTO practice_data (first_name, last_name, email, age, city, country, salary, join_date, status) VALUES
('John', 'Doe', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', 'Active'),
('Alice', 'Smith', 'alice.smith@example.com', 32, 'London', 'UK', 62000.75, '2022-06-15', 'Active'),
('Robert', 'Brown', 'robert.brown@example.com', 40, 'Sydney', 'Australia', 73000.00, '2019-09-01', 'Inactive'),
('Emily', 'Davis', 'emily.davis@example.com', 29, 'Toronto', 'Canada', 49000.25, '2021-11-30', 'Pending'),
('Michael', 'Johnson', 'michael.j@example.com', 35, 'Berlin', 'Germany', 68000.40, '2020-08-20', 'Active'),
('Sophia', 'Lee', 'sophia.lee@example.com', 27, 'Seoul', 'South Korea', 51000.90, '2023-01-05', 'Active'),
('David', 'Martinez', 'david.martinez@example.com', 45, 'Mexico City', 'Mexico', 80000.00, '2018-05-22', 'Inactive'),
('Emma', 'Taylor', 'emma.taylor@example.com', 31, 'Paris', 'France', 56000.30, '2022-07-18', 'Pending'),
('James', 'Anderson', 'james.anderson@example.com', 38, 'Chicago', 'USA', 70000.80, '2017-03-12', 'Active'),
('Isabella', 'Wilson', 'isabella.wilson@example.com', 26, 'Madrid', 'Spain', 45000.60, '2023-04-25', 'Active'),
('Liam', 'Thomas', 'liam.thomas@example.com', 33, 'Los Angeles', 'USA', 65000.75, '2021-12-10', 'Active'),
('Olivia', 'White', 'olivia.white@example.com', 29, 'Melbourne', 'Australia', 52000.50, '2020-06-21', 'Pending'),
('Noah', 'Harris', 'noah.harris@example.com', 41, 'Vancouver', 'Canada', 72000.00, '2016-08-05', 'Inactive'),
('Ava', 'Clark', 'ava.clark@example.com', 30, 'Manchester', 'UK', 58000.25, '2021-05-15', 'Active'),
('William', 'Rodriguez', 'william.rodriguez@example.com', 36, 'Lisbon', 'Portugal', 69000.40, '2019-09-10', 'Active'),
('Mia', 'Walker', 'mia.walker@example.com', 28, 'Dublin', 'Ireland', 53000.90, '2022-03-28', 'Active'),
('Ethan', 'Lewis', 'ethan.lewis@example.com', 46, 'Amsterdam', 'Netherlands', 81000.00, '2017-11-30', 'Inactive'),
('Charlotte', 'Hall', 'charlotte.hall@example.com', 34, 'Rome', 'Italy', 57000.30, '2018-07-18', 'Pending'),
('Benjamin', 'Young', 'benjamin.young@example.com', 39, 'San Francisco', 'USA', 71000.80, '2015-10-12', 'Active'),
('Lucas', 'King', 'lucas.king@example.com', 25, 'Barcelona', 'Spain', 44000.60, '2023-06-05', 'Active'),
('Daniel', 'Scott', 'daniel.scott@example.com', 37, 'Zurich', 'Switzerland', 73000.25, '2016-04-22', 'Active'),
('Harper', 'Adams', 'harper.adams@example.com', 31, 'Stockholm', 'Sweden', 59000.50, '2019-05-07', 'Pending'),
('Henry', 'Baker', 'henry.baker@example.com', 42, 'Brussels', 'Belgium', 75000.75, '2014-09-03', 'Inactive'),
('Evelyn', 'Gonzalez', 'evelyn.gonzalez@example.com', 30, 'Vienna', 'Austria', 56000.00, '2020-02-14', 'Active'),
('Alexander', 'Nelson', 'alexander.nelson@example.com', 29, 'Oslo', 'Norway', 54000.40, '2021-01-30', 'Active'),
('Sofia', 'Carter', 'sofia.carter@example.com', 47, 'Helsinki', 'Finland', 82000.90, '2013-08-18', 'Inactive'),
('Michael', 'Mitchell', 'michael.mitchell@example.com', 35, 'Prague', 'Czech Republic', 68000.60, '2018-10-12', 'Active'),
('Ella', 'Perez', 'ella.perez@example.com', 26, 'Copenhagen', 'Denmark', 45000.50, '2023-09-01', 'Active'),
('Matthew', 'Roberts', 'matthew.roberts@example.com', 32, 'Athens', 'Greece', 62000.75, '2019-07-05', 'Active'),
('Scarlett', 'Evans', 'scarlett.evans@example.com', 28, 'Edinburgh', 'Scotland', 50000.00, '2022-11-15', 'Pending'),
('Leo', 'Turner', 'leo.turner@example.com', 44, 'Seville', 'Spain', 78000.00, '2016-03-09', 'Inactive'),
('Grace', 'Torres', 'grace.torres@example.com', 33, 'Birmingham', 'UK', 63000.50, '2021-08-22', 'Active'),
('Samuel', 'Parker', 'samuel.parker@example.com', 36, 'Lyon', 'France', 67000.75, '2018-12-30', 'Active'),
('Chloe', 'Collins', 'chloe.collins@example.com', 27, 'Frankfurt', 'Germany', 52000.90, '2023-07-07', 'Active'),
('Jack', 'Edwards', 'jack.edwards@example.com', 48, 'Brisbane', 'Australia', 84000.00, '2012-04-12', 'Inactive'),
('Amelia', 'Stewart', 'amelia.stewart@example.com', 31, 'Hamburg', 'Germany', 56000.30, '2020-10-10', 'Pending'),
('Daniel', 'Morris', 'daniel.morris@example.com', 37, 'Warsaw', 'Poland', 71000.80, '2015-09-01', 'Active'),
('Lily', 'Rogers', 'lily.rogers@example.com', 25, 'Bratislava', 'Slovakia', 45000.60, '2023-05-25', 'Active'),
('Andrew', 'Reed', 'andrew.reed@example.com', 38, 'Sofia', 'Bulgaria', 70000.50, '2017-06-11', 'Active'),
('Zoe', 'Cook', 'zoe.cook@example.com', 28, 'Riga', 'Latvia', 51000.90, '2023-08-20', 'Active'),
('Joseph', 'Morgan', 'joseph.morgan@example.com', 45, 'Tallinn', 'Estonia', 80000.00, '2016-07-22', 'Inactive'),
('Lillian', 'Bell', 'lillian.bell@example.com', 29, 'Vilnius', 'Lithuania', 53000.30, '2022-04-18', 'Pending');

-- 1. INSERTING DUPLICATE REOCRDS INTO TABLE 


INSERT INTO practice_data (first_name, last_name, email, age, city, country, salary, join_date, status) VALUES
('John', 'Doe', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', 'Active'),
('John', 'Doe', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', 'Active');


-- 2. CHECKING FOR DUPLICATE DATA 
-- MANUALLY

SELECT * FROM practice_data pd 
WHERE first_name = 'JOHN' AND last_name ='Doe'


-- id|first_name|last_name|email               |age|city    |country|salary  |join_date |status|
-- --+----------+---------+--------------------+---+--------+-------+--------+----------+------+
--  1|John      |Doe      |john.doe@example.com| 28|New York|USA    |55000.50|2023-02-10|Active|
-- 43|John      |Doe      |john.doe@example.com| 28|New York|USA    |55000.50|2023-02-10|Active|
-- 44|John      |Doe      |john.doe@example.com| 28|New York|USA    |55000.50|2023-02-10|Active|



-- FOR ENTIRE TABLE 

SELECT *,COUNT(*) FROM practice_data pd 
GROUP BY first_name, last_name, email, age, city, country, salary, join_date, status 

SET sql_mode = (SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

-- id|first_name|last_name|email               |age|city    |country|salary  |join_date |status|COUNT(*)|
-- --+----------+---------+--------------------+---+--------+-------+--------+----------+------+--------+
--  1|John      |Doe      |john.doe@example.com| 28|New York|USA    |55000.50|2023-02-10|Active|       3|
  
 
-- 3. REMOVING DUPLICATE RECORDS WITH PRIMARY KEY 

 
WITH MAIN AS (
SELECT MIN(ID) AS  KEEP_ID FROM practice_data pd 
GROUP BY first_name, last_name, email, age, city, country, salary, join_date, status )
DELETE FROM practice_data pd 
WHERE ID NOT IN (SELECT KEEP_ID FROM MAIN);

SELECT * FROM practice_data pd 
WHERE first_name = 'JOHN' AND last_name ='Doe'

-- id|first_name|last_name|email               |age|city    |country|salary  |join_date |status|
-- --+----------+---------+--------------------+---+--------+-------+--------+----------+------+
--  1|John      |Doe      |john.doe@example.com| 28|New York|USA    |55000.50|2023-02-10|Active|

-- ONLY 1 RECORD WITH JOHN DOE INSTEAD OF 3 



-- REMOVING DUPLICATE RECORDS FROM A TABLE WITHOUT PRIMARY KEY AND RENAMING TABLE AND DROP TABLE

CREATE TABLE practice_data_dedup AS 
SELECT DISTINCT * FROM practice_data;

DROP TABLE practice_data;

ALTER TABLE practice_data_dedup RENAME TO practice_data;


-- 4. INSERTING DATA 

INSERT INTO practice_data VALUES
('SMITH', 'Doe', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', 'Active');


-- SQL Error [1136] [21S01]: Column count doesn't match value count at row 1  
-- EXPLAINATION AS ID IS AN FIRST COLUMN WITH AUTO INCREMENT WE EITHER NEED TO PASS COLUMN NAMES AFTER VALUE OR WE NEED TO MENTION DEFAULT 
-- WHILE PASSING OTHER VALUES 

-- SOLUTION 1 

INSERT INTO practice_data (first_name, last_name, email, age, city, country, salary, join_date, status) VALUES
('SMITH', 'Doe', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', 'Active');

-- OR SOLUTION 2 

INSERT INTO practice_data VALUES
(DEFAULT,'SMITH', 'Doe', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', 'Active');


-- INSERTING PARTIAL DATA WITH OTHER VALUE NULL 

INSERT INTO practice_data (first_name,last_name) VALUES
('ABEY','CLAIVE');



-- 5. NULL VALUE HANDLING 


-- ADDING SOME NOICY DATA WITH NULL VALUES 

INSERT INTO practice_data VALUES
(DEFAULT,'MARTHA', 'Doe', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', NULL),
(DEFAULT,'JONATHAN', 'MAG', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', NULL),
(DEFAULT,'JONATHAN', 'MAG', 'NA', 28, 'New York', 'USA', NULL, '2023-02-10', 'ACTIVE');


DELETE FROM practice_data WHERE STATUS IS NULL;
-- THREE RECORDS DELERTED 2 FROM ABOVE AND 1 RECORDS FROM PARTIAL DATA FOR ABEY CLAIVE


-- HANDLING NULL VALUES (DEFAULT,'JONATHAN', 'MAG', 'NA', 28, 'New York', 'USA', NULL, '2023-02-10', 'ACTIVE');
-- HERE SALARY IS NULL 

SET @AVG_SAL = (SELECT AVG(salary) FROM practice_data );

UPDATE practice_data 
SET salary =  @AVG_SAL
WHERE salary IS NULL

SELECT * FROM practice_data pd 
WHERE last_name = 'MAG'

-- HERE SALARY IS NOW 62326.04 $

-- id|first_name|last_name|email|age|city    |country|salary  |join_date |status|
-- --+----------+---------+-----+---+--------+-------+--------+----------+------+
-- 49|JONATHAN  |MAG      |NA   | 28|New York|USA    |62326.04|2023-02-10|Active|


-- 6. UPDATING MISSING VALUE / REPLACING MISSING VALUES 

-- ADDING SOME NOICY DATA WITH NULL VALUES 

INSERT INTO practice_data VALUES
(DEFAULT,'MISSING', 'BLANK', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', NULL),
(DEFAULT,'UNKNOWN', 'BING', 'john.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', NULL),
(DEFAULT,'', 'BING', 'MR.doe@example.com', 28, 'New York', 'USA', 55000.50, '2023-02-10', NULL)

SELECT * FROM practice_data pd 
WHERE pd.first_name IN ('MISSING','UNKNOWN','')

-- id|first_name|last_name|email               |age|city    |country|salary  |join_date |status|
-- --+----------+---------+--------------------+---+--------+-------+--------+----------+------+
-- 53|MISSING   |BLANK    |john.doe@example.com| 28|New York|USA    |55000.50|2023-02-10|      |
-- 54|UNKNOWN   |BING     |john.doe@example.com| 28|New York|USA    |55000.50|2023-02-10|      |
-- 55|          |BING     |MR.doe@example.com  | 28|New York|USA    |55000.50|2023-02-10|      |



UPDATE practice_data 
SET first_name = CASE WHEN 
	first_name = 'MISSING' THEN NULL
	WHEN first_name  = 'UNKNOWN' THEN NULL 
	WHEN first_name ='' THEN NULL 
	ELSE first_name 
END;

SELECT * FROM practice_data pd 
WHERE pd.first_name IN ('MISSING','UNKNOWN','')

-- id|first_name|last_name|email|age|city|country|salary|join_date|status|
-- --+----------+---------+-----+---+----+-------+------+---------+------+
-- NO RECORDS AS RECORDS GOT UPDATE AS NULL INSTEAD OF MANY OTHER VALUES 


-- 7. RENAMING COLUMN NAME 

ALTER TABLE practice_data 
RENAME COLUMN salary TO monthly_salary;

-- 8. DROPPING THE COLUMN

ALTER TABLE practice_data 
DROP COLUMN SALARY;

-- 9. ADDING NEW COLUMN 

ALTER TABLE practice_data 
ADD COLUMN phone_number VARCHAR(15) NULL;

ALTER TABLE practice_data 
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- 10. MODIFYING COLUMN DATA TYPE

ALTER TABLE practice_data 
MODIFY COLUMN age SMALLINT;

-- 11. CONVERTING DATA TYPE 

-- UPDATING DATA TYPE OF ENITE COLUMN  

ALTER TABLE practice_data 
MODIFY COLUMN age INT;

-- UPDATING VALUE WHILE QUERYING 
-- LIKE HERE FETCHING AGE VALUE AS CHARACTER INSTEAD OF NUMBER / INT
SELECT CAST(age AS CHAR) AS age_as_text FROM practice_data;


-- 12. SELECT INTO [NOT ALLOWED IN MY SQL] ONLY FOR SQL SERVER OR ORACAL OR PG DB 

SELECT first_name, last_name, monthly_salary
INTO high_salary_employees
FROM practice_data pd 
WHERE monthly_salary > 70000;

-- 13. TEMP TABLE AND CTE 

-- TEMP TABLE

-- CREATE TEMPORARY TABLE high_salary_employees AS 
-- SELECT emp_id, emp_name, salary 
-- FROM employees 
-- WHERE salary > (SELECT AVG(salary) FROM employees);
-- 
-- SELECT * FROM high_salary_employees;


-- WITH CTE

-- WITH high_salary_employees AS (
--     SELECT emp_id, emp_name, salary 
--     FROM employees 
--     WHERE salary > (SELECT AVG(salary) FROM employees)
-- )
-- SELECT * FROM high_salary_employees;






