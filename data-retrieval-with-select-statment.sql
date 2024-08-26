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
