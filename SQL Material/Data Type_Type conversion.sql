Common SQL Data Types
Numeric Data Types

INT – Integer values ranging from -2,147,483,648 to 2,147,483,647.
BIGINT – Large integer values ranging from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807.
SMALLINT – Smaller integer values between -32,768 to 32,767.
TINYINT – Very small integer, can be 0 to 255 (Unsigned) or -128 to 127 (Signed).
DECIMAL(p,s) – Fixed-point number with precision (p) and scale (s), where p can go up to 65 and s up to 30 in MySQL.
FLOAT – Floating-point number with approximate values around ±3.402823466E+38.
DOUBLE – Double-precision floating point, supporting values up to ±1.7976931348623157E+308.
String Data Types

VARCHAR(n) – Variable-length string, supports up to 65,535 characters, depending on the row size.
CHAR(n) – Fixed-length string, maximum 255 characters.
TEXT – Large text field, can store up to 64 KB (65,535 characters).
Date & Time Data Types

DATE – Stores only date values, ranging from 1000-01-01 to 9999-12-31.
DATETIME – Stores both date and time, from 1000-01-01 00:00:00 to 9999-12-31 23:59:59.
TIMESTAMP – UNIX timestamp format, valid from 1970-01-01 00:00:01 UTC to 2038-01-19 03:14:07 UTC.
Boolean Data Type

BOOLEAN – Stores TRUE/FALSE values, internally stored as TINYINT(1) (0 = FALSE, 1 = TRUE).



Comparison: CAST() vs. CONVERT() in SQL
1. Standard Compliance

CAST() – Follows the ANSI SQL standard, making it portable across different database systems.
CONVERT() – Specific to SQL Server and MySQL and not part of the ANSI standard.
2. Syntax

CAST() – CAST(expression AS target_data_type)
CONVERT() – CONVERT(target_data_type, expression, style)
3. Supported Databases

CAST() – Supported in MySQL, PostgreSQL, SQL Server, and Oracle.
CONVERT() – Mainly used in SQL Server and MySQL.
4. Format Control

CAST() – Provides basic data type conversion with no additional formatting.
CONVERT() – Allows formatting, particularly for date and number formats in SQL Server.
5. Performance

CAST() – Optimized for standard SQL operations.
CONVERT() – May have additional overhead, depending on how formatting is used.




SELECT CAST('2025-03-03' AS DATE);  -- Converts string to DATE
SELECT CAST(123.456 AS INT);       -- Converts FLOAT to INT (removes decimals)



SELECT CONVERT(DATE, '2025-03-03');  -- Converts string to DATE
SELECT CONVERT(INT, 123.456);        -- Converts FLOAT to INT




Conversion	Example
String → Integer	CAST('123' AS INT)
Integer → String	CAST(123 AS CHAR(10))
Date → String	CAST(DATE_COLUMN AS CHAR(10))
String → Date	CAST('2025-03-03' AS DATE)
Float → Integer	CAST(123.45 AS INT) (removes decimals)



CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,         -- Integer (Stores up to 2,147,483,647)
    Name VARCHAR(100),               -- Variable-length string (100 characters)
    Salary DECIMAL(10,2),            -- Decimal with 10 digits, 2 after the decimal
    Join_Date DATE,                  -- Stores a date (YYYY-MM-DD)
    Is_Active BOOLEAN                 -- TRUE/FALSE (Stored as TINYINT in MySQL)
);



SELECT DATE_FORMAT('2025-03-03', '%d-%m-%Y') AS formatted_date;

formatted_date
--------------
03-03-2025




Format Code	Output Example (For '2025-03-03')
%Y-%m-%d	2025-03-03 (Default)
%d-%m-%Y	03-03-2025
%M %d, %Y	March 03, 2025
%W, %M %d	Monday, March 03




