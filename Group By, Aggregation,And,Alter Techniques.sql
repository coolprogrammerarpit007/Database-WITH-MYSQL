SELECT database();
SHOW DATABASES;
USE techforallwithpriya;
SHOW TABLES;
SELECT * FROM learners;
-- COUNTO OF NUMBER OF STUDENTS WHO ENROLLED VIA,linkedin,youtube and community 
SELECT COUNT(*) AS youtubeLearners FROM learners WHERE SourceOfJoining = 'Youtube'; 
SELECT SourceOfJoining, Count(*) AS num_of_students
FROM learners
GROUP BY SourceOfJoining;




-- count number of students joined and locations
SELECT SourceOfJoining,Location, COUNT(*) 
FROM learners
GROUP BY SourceOfJoining,Location;

-- Corresponding to each course, how many students have enrolled

SELECT CourseID AS Course_name, COUNT(*) AS num_of_students
FROM learners
GROUP BY CourseID;

--  corresponding to individual source of joining, give the maximum years of experience a student can have

SELECT SourceOfJoining , YearsOfExperience, COUNT(*)
FROM learners
GROUP BY SourceOfJoining, YearsOfExperience;

-- now give maximum no of experience respective to that 
SELECT SourceOfJoining , MAX(YearsOfExperience)
FROM learners
GROUP BY SourceOfJoining;


--  Corresponding to the indivual source of joining, give the average experience any person have?


SELECT SourceOfJoining AS Platform,
AVG(YearsOfExperience) AS AverageExperience
FROM learners
GROUP BY SourceOfJoining;

-- Display the records of those learners who joined the course using more than 1 source.

SELECT SourceOfJoining AS Source,
	COUNT(*) AS NumberOfStudents
	FROM learners
	GROUP BY SourceOfJoining
    HAVING NumberOfStudents >= 1;
    
    -- Display the count of students joined via linkedin 
SELECT SourceOfJoining AS Source,
COUNT(*) FROM learners
GROUP BY SourceOfJoining
HAVING SourceOfJoining = 'Linkedin';

-- Display the course which does not includes Excel
SELECT * FROM courses
WHERE NOT CourseName LIKE  '% Excel %';

SELECT * FROM learners 
WHERE YearsOfExperience <= 4
AND SourceOfJoining = 'Youtube';

SELECT * FROM learners 
WHERE YearsOfExperience BETWEEN 1 AND 4;

DESC employee;

ALTER TABLE employee ADD COLUMN jobPosition
varchar(50);
ALTER TABLE employee MODIFY COLUMN jobPosition
varchar(20);

-- TO DROP COLUMN NAME jobPosition
ALTER TABLE employee DROP COLUMN jobPosition;