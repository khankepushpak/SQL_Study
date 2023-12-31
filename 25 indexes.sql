SELECT count(*)FROM CUSTOMERS;  #122 ROWS

SELECT count(*)FROM customers WHERE country ="USA";  #36 ROWS

EXPLAIN SELECT count(*) FROM customers WHERE country ="USA";

SHOW  INDEXES FROM customers;

CREATE INDEX PUSHPAK ON CUSTOMERS(COUNTRY);

EXPLAIN SELECT count(*) FROM customers WHERE country ="USA";

DROP INDEX PUSHPAK ON customers;


//_____________________________________________________ //

CREATE TABLE Employee_Detail(    
    ID int AUTO_INCREMENT PRIMARY KEY,     
    Name varchar(45),     
    Email varchar(45),    
    Phone varchar(15),     
    City varchar(25),  
    UNIQUE KEY unique_email (Email)  
);  

SHOW INDEXES FROM Employee_Detail;  

INSERT INTO Employee_Detail(ID, Name, Email, Phone, City)    
VALUES (1, 'Peter', 'peter@gmail.com', '49562959223', 'Texas'),    
	   (2, 'Suzi', 'suzi@gmail.com', '70679834522', 'California'),    
	   (3, 'Joseph', 'joseph@gmail.com', '09896765374', 'Alaska');  

EXPLAIN SELECT * FROM EMPLOYEE_DETAIL WHERE Name = 'Suzi';

INSERT INTO Employee_Detail 
VALUES (4, 'Suzi', 'suzi@yahoo.com', '70679834522', 'Texas'); 

CREATE UNIQUE INDEX index_name_phone ON Employee_Detail (Name, Phone);    
SHOW INDEXES FROM Employee_Detail;  


INSERT INTO Employee_Detail(ID, Name, Email, Phone, City)   
VALUES (4, 'Joseph', 'joseph123@gmail.com', '09896765374', 'Texas');    

