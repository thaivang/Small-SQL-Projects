	CREATE TABLE Customer (
	Customer_id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	First_Name VARCHAR(50) NOT NULL, 
	Last_Name VARCHAR (50) NOT NULL 

	);

	CREATE TABLE City (
	City_Number INT NOT NULL CONSTRAINT fk_Customer_id FOREIGN KEY REFERENCES Customer(Customer_id) ON UPDATE CASCADE ON DELETE CASCADE,  
	State_Name VARCHAR(50) NOT NULL, 
	City_Name VARCHAR(50) NOT NULL
	);

	INSERT INTO Customer
		(First_Name, Last_Name)
		VALUES
		('Tom', 'Bronze'),
		('Brandon', 'Londan'),
		('Tony', 'Balony'),
		('Mary', 'Smelly')
	;

	INSERT INTO City
		(City_Number, State_Name, City_Name)
		VALUES
		(1, 'Oregon', 'Portland'),
		(2, 'California','San Francisco'),
		(4, 'Washington', 'Seattle')
	;

	SELECT * FROM Customer;
	SELECT * FROM City;

SELECT CU.First_Name, CU.Last_Name,
CI.City_Number, CI.State_Name, CI.City_Name
FROM Customer CU FULL JOIN City CI
ON CU.Customer_id = Ci.City_Number
ORDER BY CU.Customer_id ASC;

drop table City, Customer;