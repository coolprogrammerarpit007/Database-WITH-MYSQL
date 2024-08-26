SHOW DATABASES;
CREATE DATABASE techforallwithpriya;
CREATE DATABASE IF NOT EXISTS techforallwithpriya;
USE techforallwithpriya;
SELECT database();

CREATE TABLE employee(
	EID INT PRIMARY KEY AUTO_INCREMENT,
	FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Address VARCHAR(50) NOT NULL

);

--  Command to insert data into the table
INSERT INTO employee(FirstName,LastName,Age,Salary,Address) VALUES ('Novak','Djokovic',25,100000,'Jaipur');
INSERT INTO employee(FirstName,LastName,Age,Salary,Address) VALUES ('Rajesh','Sharma',26,200000,'Jaipur');
INSERT INTO employee(FirstName,LastName,Age,Salary,Address) VALUES ('Mukesh','Sharma',27,300000,'Jaipur');
INSERT INTO employee(FirstName,LastName,Age,Salary,Address) VALUES ('Andrew','Flintoff',28,400000,'Jaipur');
INSERT INTO employee(FirstName,LastName,Age,Salary,Address) VALUES ('Ramesh','Singh',29,500000,'Jaipur');
INSERT INTO employee(FirstName,LastName,Age,Salary,Address) VALUES ('Manish','Kumar',30,600000,'Jaipur');
INSERT INTO employee(FirstName,LastName,Age,Salary,Address) VALUES ('Jackarius','Smith',35,700000,'Jaipur');
SHOW TABLES;
DESC employee; -- To describe Table
DROP TABLE employee; -- Cmd to drop the table

SELECT * FROM employee;

-- GIVE ME EMPLOYEES WHERE SALARY IS GREATER THAN 100000 
SELECT * FROM employee WHERE Salary > 100000;
SELECT FirstName,LastName FROM employee WHERE Salary > 100000;

-- Record of employees age greater than 25

SELECT * FROM employee WHERE age > 25; 

-- Update name of employee Arpit last name with Rathore
UPDATE employee SET LastName = 'Rathore'
WHERE EID = 1;

DELETE FROM employee
WHERE EID = 1;
 