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