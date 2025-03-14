CREATE TABLE 
CLIENT_MASTER(CLIENT_ID VARCHAR(10) NOT NULL PRIMARY KEY,
	CLIENT_NAME VARCHAR(255),
	INCOME INT,
	NETWORTH INT
	)
	
INSERT INTO CLIENT_MASTER VALUES -- FAIR VALUE
('S2343','JOHN',25000,100000), -- 150000 
('A4258','ROSS',50000,150000), -- 250000
('H8596','RACHEL',20000,1500000), -- 1540000
('T3293','KANE',60000,350000); -- 470000

SELECT * FROM CLIENT_MASTER;

CREATE TABLE CLIENT_MASTER_FAIR_VALUE AS 
SELECT *,
	(INCOME * (SELECT INCOME_MULTI FROM INCOME_NETWORTH_MULTIPLIER)
	+
	NETWORTH * (SELECT NETWORTH_MULTI FROM INCOME_NETWORTH_MULTIPLIER))
	AS FAIR_VALUE 
FROM CLIENT_MASTER;