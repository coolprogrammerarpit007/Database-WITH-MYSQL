SELECT database();
SHOW DATABASES;
USE techforallwithpriya;
DESC employee;
INSERT INTO employee(FirstName,LastName,Age,Salary,Address) Values('Arpit','Mishra',25,750000,'Jaipur');
UPDATE employee SET FirstName = 'Ankur', LastName = 'Sharma' WHERE EID = 8;

CREATE TABLE courses(CourseId INT PRIMARY KEY AUTO_INCREMENT,
CourseName VARCHAR(50) NOT NULL,
CourseDuration VARCHAR(50) NOT NULL,
CoursePrice INT NOT NULL);

INSERT INTO courses(CourseName,CourseDuration,CoursePrice) VALUES('The Complete Excel Mastery',3,1499);
INSERT INTO courses(CourseName,CourseDuration,CoursePrice) VALUES('DSA FOR INTERVIEW PREPERATION',2,1499);
INSERT INTO courses(CourseName,CourseDuration,CoursePrice) VALUES('The SQL Bootcamp',1,2499);

SELECT * FROM courses;

CREATE TABLE Learners(LearnerID INT PRIMARY KEY AUTO_INCREMENT,
CourseID INT NOT NULL,
LearnerFirstName VARCHAR(50) NOT NULL,
LearnerLastName VARCHAR(50) NOT NULL,
LearnerEmail VARCHAR(60) UNIQUE KEY,
LearnerPhoneNumber VARCHAR(15) NOT NULL,
LearnerEnrollmentDate DATE NOT NULL,
LearnerBatchStartDate DATE NOT NULL,
YearsOfExperience INT NOT NULL,
LearnerCompany VARCHAR(70),
SourceOfJoining VARCHAR(50),
Location VARCHAR(30) NOT NULL,
FOREIGN KEY(CourseID) REFERENCES courses(CourseId) );

INSERT INTO Learners(CourseID,LearnerFirstName,LearnerLastName,LearnerEmail,LearnerPhoneNumber,
LearnerEnrollmentDate,LearnerBatchStartDate,
YearsOfExperience,LearnerCompany,SourceOfJoining,Location) VALUES(1,'Akhil','George','akhil.george.8743@gmail.com',
9351469994,'2024-07-15','2024-08-19',1,'Sun Pharma','Youtube','Jaipur');
INSERT INTO Learners(CourseID,LearnerFirstName,LearnerLastName,LearnerEmail,LearnerPhoneNumber,
LearnerEnrollmentDate,LearnerBatchStartDate,
YearsOfExperience,LearnerCompany,SourceOfJoining,Location) VALUES(1,'Rishikesh','Joshi','rishikesh@gmail.com',
8351469994,'2024-07-15','2024-08-19',1,'Sun Pharma','Youtube','Jaipur');
INSERT INTO Learners(CourseID,LearnerFirstName,LearnerLastName,LearnerEmail,LearnerPhoneNumber,
LearnerEnrollmentDate,LearnerBatchStartDate,
YearsOfExperience,LearnerCompany,SourceOfJoining,Location) VALUES(2,'Jeevan','Sai','jeevan@gmail.com',
7351469994,'2024-07-15','2024-08-19',1,'Sun Pharma','Youtube','Jaipur');
INSERT INTO Learners(CourseID,LearnerFirstName,LearnerLastName,LearnerEmail,LearnerPhoneNumber,
LearnerEnrollmentDate,LearnerBatchStartDate,
YearsOfExperience,LearnerCompany,SourceOfJoining,Location) VALUES(2,'Mohit','Sharma','mohit@gmail.com',
7351469994,'2024-07-15','2024-08-19',1,'Sun Pharma','Youtube','Jaipur');
INSERT INTO Learners(CourseID,LearnerFirstName,LearnerLastName,LearnerEmail,LearnerPhoneNumber,
LearnerEnrollmentDate,LearnerBatchStartDate,
YearsOfExperience,LearnerCompany,SourceOfJoining,Location) VALUES(3,'Virat','Kohli','virat@gmail.com',
6351469994,'2024-07-15','2024-08-19',1,'Sun Pharma','Youtube','Jaipur');
INSERT INTO Learners(CourseID,LearnerFirstName,LearnerLastName,LearnerEmail,LearnerPhoneNumber,
LearnerEnrollmentDate,LearnerBatchStartDate,
YearsOfExperience,LearnerCompany,SourceOfJoining,Location) VALUES(3,'Rohit','Sharma','rohit@gmail.com',
6351469994,'2024-07-15','2024-08-19',1,'Sun Pharma','Youtube','Jaipur');
INSERT INTO Learners(CourseID,LearnerFirstName,LearnerLastName,LearnerEmail,LearnerPhoneNumber,
LearnerEnrollmentDate,LearnerBatchStartDate,
YearsOfExperience,LearnerCompany,SourceOfJoining,Location) VALUES(3,'Hitest','Choudhary','chai@hitest.com',7856145621,
'2024-09-15','2024-12-30',15,'Chai Aur Code','Youtube','Rohtak');

SELECT * FROM Learners;

-- Data Analysis 

-- Record of an employee of the highest salary.
SELECT * FROM employee ORDER BY SALARY DESC LIMIT 1; 

-- Record of an employee of the highest salary where age is greater than 30.

SELECT * FROM employee WHERE age > 30 ORDER BY Salary DESC LIMIT 1;

-- display the number of enrollments in techforallwithpriya

SELECT COUNT(*) as num_of_enrollments 
FROM Learners; 

-- to check how many people has enrolled for the course id 3

SELECT COUNT(*) as number_of_enrollments_for_course_3 FROM Learners WHERE CourseID = 3; 

-- find how many students enrolled in january

SELECT COUNT(*) as num_of_students_enrolled_in_january FROM Learners WHERE LearnerEnrollmentDate LIKE '%-01-15';

SELECT COUNT(*) as learner_company FROM Learners WHERE LearnerCompany = 'Sun Pharma'; 

--  update hitest choudhary's years of experience and company name


UPDATE Learners SET YearsOfExperience = 20 , LearnerCompany = 'Amazon' WHERE LearnerID = 7;

SELECT COUNT(DISTINCT LearnerCompany) as learnerUniqueCompany FROM Learners WHERE LearnerCompany = 'Sun Pharma';
