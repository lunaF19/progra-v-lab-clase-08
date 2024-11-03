USE MASTER;

DROP DATABASE PrograV_Clase8;
CREATE DATABASE PrograV_Clase8;
USE PrograV_Clase8;


DROP TABLE Customer;

CREATE TABLE Customer(
CustomerID INT PRIMARY KEY,    
CustomerName VARCHAR(50),    
LastName VARCHAR(50),    
Country VARCHAR(50),    
Age INT,  
Phone INT 
);


INSERT INTO Customer 
(CustomerID, CustomerName, LastName, Country, Age, Phone)
VALUES (1, 'Shubham', 'Thakur', 'India','23',null),       
(2, 'Aman ', 'Chopra', 'Australia','21',null),       
(3, 'Naveen', 'Tulasi', 'Sri lanka','24',null),       
(4, 'Aditya', 'Arpan', 'Austria','21',null),       
(5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22',null);

-- Operador Between
Select *
From Customer
Where Age Between 10 And 25;


-- Order by 
Select *
From Customer
Order by Age DESC;


-- Having
Select 
	LEN(LastName), 
	COUNT(1) AS  TOTAL_COUNT
From Customer
Group by LEN(LastName)
Having COUNT(1) > 1;

-- COUNT
Select  
	COUNT(1) AS TOTAL_COSTUMERS
From Customer;


-- AVG
Select 
	AVG(Age) AS AVG_AGE,
	SUM(Age) AS  SUM_AGE,
	COUNT(1) AS TOTAL_COSTUMERS,
	SUM(Age) / COUNT(0)
From Customer
Group by LEN(LastName)
Having COUNT(1) > 1;

select * from Customer;

CREATE OR ALTER PROCEDURE sp_CreateCustomer   
	@P_CustomerName VARCHAR(50),
	@P_LastName VARCHAR(50),
	@P_Country VARCHAR,
	@P_Age INT,  
	@P_Phone INT 

AS
	
	DECLARE @Ln_customer_id INT
BEGIN
	SET @Ln_customer_id = (SELECT ISNULL(MAX(CustomerID),0) +1 FROM Customer);

	INSERT INTO Customer 
		(CustomerID, CustomerName, LastName, Country, Age, Phone)
	VALUES (
		@Ln_customer_id,
		@P_CustomerName,
		@P_LastName,
		@P_Country,
		@P_Age,  
		@P_Phone
	);

END;


