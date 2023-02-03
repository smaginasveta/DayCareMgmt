DROP DATABASE IF EXISTS DayCareMgmt;

CREATE DATABASE DayCareMgmt;

USE DayCareMgmt;

CREATE TABLE DayCare (
    Id int PRIMARY KEY,
    Name varchar(255)
);

INSERT INTO DayCare (Id, Name)
VALUES 
(1, 'KidsCare'),
(2,	'MyCare'),
(3,	'PerfectSchool');

/*SELECT * FROM DayCare;*/

CREATE TABLE DayCareSettings (
    DayCareId int,
    SettingName varchar(255), 
    SettingValue varchar(255)
);

INSERT INTO DayCareSettings (DayCareId, SettingName, SettingValue)
VALUES 
(1, 'Phone', '(512) 219-0025'),
(1, 'Address', '213 N Mount Rushmore Dr'),
(1, 'City', 'Cedar Park, Texas(TX), 78613'),
(2, 'Phone', '(512) 219-1303'),
(2, 'Address', '2215 E Riviera Dr'),
(2, 'City', 'Cedar Park, Texas(TX), 78613'),
(3, 'Phone', '(512) 219-1539'),
(3, 'Address', '1111 Forest Oaks Path'),
(3, 'City', 'Cedar Park, Texas(TX), 78613'),
(1, 'Owner', 'Frederick Rodriguez'),
(2, 'Owner', 'Alex Jensen'),
(3, 'Owner', 'Tiffany Hampton'),
(1, 'TaxId', '6710175480'),
(2, 'TaxId', '5701931452'),
(3, 'TaxId', '5950753275');

/*SELECT * FROM DayCareSettings;*/

CREATE TABLE Teacher (
    Id int PRIMARY KEY,
    Name varchar(255), 
    Gender char(1),
    SSN varchar(100),
    DateOfBirth date,
    Address varchar(255)
);

INSERT INTO Teacher (Id, Name, Gender, SSN, DateOfBirth, Address)
VALUES 
(1,	'Marie Koch',	'F', '160244666',	'1960-11-25',	'213 N Mount Rushmore, Dr Cedar Park, Texas(TX), 78613'),
(2,	'Hannah Harmon',	'F', 	'762455609',	'1964-12-15',	'510 N Mount Rushmore Dr, Cedar Park, Texas(TX), 78613'),
(3,	'Meagan Williams',	'F', '487815259',	'1966-03-23',	'2215 E Riviera Dr, Cedar Park, Texas(TX), 78613'),
(4,	'Lori Miller',	'F',	'219993484',	'1966-06-22',	'2110 E Riviera Dr, Cedar Park, Texas(TX), 78613'),
(5,	'Angela Smith',	'W',	'340943605',	'1967-05-16',	'114 Silver Maple Trl, Cedar Park, Texas(TX), 78613'),
(6,	'Stephanie Simmons',	'F',	'841 57790',	'1968-02-27',	'9307 Clearock Dr, Austin, Texas(TX), 78750'),
(7,	'Angela Townsend',	'F',	'252222628',	'1968-07-31',	'11912 Nene Dr, Austin, Texas(TX), 78750'),
(8,	'Hayley Hoffman',	'F',	'389419543',	'1971-06-30',	'11915 Brookwood Cir, Austin, Texas(TX), 78750'),
(9,	'Allison Krause',	'F',	'627415419',	'1972-03-03',	'12300 Hickorystick Cv, Austin, Texas(TX), 78750'),
(10,	'Emily Chambers',	'F',	'791865604',	'1973-06-21',	'10507 Grand Oak Cir, Austin, Texas(TX), 78750'),
(11,	'Amanda Haynes',	'F',	'281323695',	'1979-07-20',	'891 Twin Oaks Dr,  Austin, Texas(TX), 78750'),
(12,	'Toni Davis',	'F',	'854999543',	'1979-08-23',	'17503 Rustington Dr,  Austin, Texas(TX), 78750'),
(13,	'Frances Johnson',	'F',	'854978543',	'1979-12-31',	'1023 Vitalious St,  Austin, Texas(TX), 78750'),
(14,	'Barbara George',	'F',	'660358471',	'1982-03-05',	'1022 W College St, Cedar Park, Texas(TX), 78613'),
(15,	'Lisa Brewer',	'F',	'216670460',	'1982-11-18',	'17506 Golf Club Dr, Cedar Park, Texas(TX), 78613'),
(16,	'Alison Mcknight',	'F',	'829143180',	'1983-03-02',	'175 Whispering Oaks Dr, Cedar Park, Texas(TX), 78613'),
(17,	'Shelley Woods',	'F',	'290953618',	'1984-02-15',	'8906 Orange Blossom Loop, Cedar Park, Texas(TX), 78613'),
(18,	'Elizabeth Gordon',	'F',	'57767892',	'1984-03-09',	'8907 Harbour Town, Leander, Texas(TX), 78641'),
(19,	'Kristina Jensen',	'F',	'952218994',	'1986-08-12',	'201 E Tomlinson St, Leander, Texas(TX), 78641'),
(20,	'Michelle Keller',	'F',	'185115895',	'1990-06-18',	'8902 W State 56 Hwy, Leander, Texas(TX), 78641'),
(21,	'Sharon Clark',	'F',	'812648861',	'1991-05-03',	'1750 Ranchero Rd, Leander, Texas(TX), 78641'),
(22,	'Elizabeth Baker',	'F',	'817398304',	'1992-10-14',	'1022 Scott Ln, Leander, Texas(TX), 78641'),
(23,	'Andrea Jacobs',	'F',	'618298809',	'1998-09-29',	'201 E Mountain Rd, Leander, Texas(TX), 78641'),
(24,	'Victoria Murray',	'F',	'829372142',	'1999-01-01',	'10224 Crawford Farms Dr, Leander, Texas(TX), 78641'),
(25,	'Tanya Michael',	'F',	'621643206',	'2000-02-02',	'201 Kelly Brook Ln, Leander, Texas(TX), 78641'),
(26,	'Brooke Weaver',	'F',	'799288557',	'1984-11-26',	'891 Twin Oaks Dr, Georgetown, Texas(TX), 78626'),
(27,	'Cheryl Cook',	'F',	'53053O480',	'1986-09-17',	'8906 Walnut Basin, Georgetown, Texas(TX), 78626'),
(28,	'Lindsay Lester',	'F',	'709382276',	'1986-10-17',	'1022 N Staples St, Georgetown, Texas(TX), 78626'),
(29,	'Sheila Smith',	'F',	'888781692',	'1987-02-23',	'175 Sea Breeze Dr, Georgetown, Texas(TX), 78626'),
(30,	'Robyn Thornton',	'F',	'856695999',	'1988-09-15',	'8907 Orange Blossom Loop, Cedar Park, Texas(TX), 78613');



CREATE TABLE Student (
    Id int PRIMARY KEY,
    Name varchar(255), 
    Gender char(1),
    DateOfBirth date
);

INSERT INTO Student (Id, Name, Gender, DateOfBirth)
VALUES 
(1,	'Jeffrey Young',	'M',	'2018-07-11'),
(2,	'Mark Perez',	'M',	'2018-12-22'),
(3,	'Joseph Flores',	'M',	'2018-12-28'),
(4,	'Jimmy Olson',	'M',	'2019-01-06'),
(5,	'Jordan Ortiz',	'M',	'2019-01-13'),
(6,	'Mark Lane',	'M',	'2019-06-22'),
(7,	'Anthony Wagner',	'M',	'2019-08-10'),
(8,	'Ethan Morris',	'M',	'2019-11-23'),
(9,	'Karl Harper',	'M',	'2021-01-06'),
(10,	'Joseph Walters',	'M',	'2021-04-26'),
(11,	'Kevin Haynes',	'M',	'2021-05-07'),
(12,	'Michael Walton',	'M',	'2021-06-03'),
(13,	'Christopher Rice',	'M',	'2021-06-19'),
(14,	'Timothy Stewart',	'M',	'2021-10-10'),
(15,	'Brandon Adams',	'M',	'2021-11-20'),
(16,	'Paul Murphy',	'M',	'2022-03-10'),
(17,	'Mark Carter',	'M',	'2022-05-19'),
(18,	'James Kemp',	'M',	'2022-05-23'),
(19,	'John Dickerson',	'M',	'2022-07-04'),
(20,	'Joseph Butler',	'M',	'2022-07-26'),
(21,	'Matthew Lloyd',	'M',	'2022-07-27'),
(22,	'Raymond Burgess',	'M',	'2022-09-15'),
(23,	'Vincent Nelson',	'M',	'2022-11-06'),
(24,	'Ronald Garcia',	'M',	'2022-12-20'),
(25,	'Raymond Decker',	'M',	'2022-12-29'),
(26,	'Gabriel Lucas',	'M',	'2018-06-24'),
(27,	'Peter Gonzalez',	'M',	'2018-07-22'),
(28,	'David Morris',	'M',	'2018-07-25'),
(29,	'Joseph Hamilton',	'M',	'2018-08-12'),
(30,	'Richard Horton',	'M',	'2018-10-01'),
(31,	'Thomas Ayers',	'M',	'2018-10-04'),
(32,	'David Mcneil',	'M',	'2018-11-05'),
(33,	'Anthony Wells',	'M',	'2018-11-08'),
(34,	'Jose Franklin',	'M',	'2019-01-23'),
(35,	'Jason Wilson',	'M',	'2019-05-19'),
(36,	'Scott Henderson',	'M',	'2019-05-28'),
(37,	'Curtis Fleming',	'M',	'2020-03-13'),
(38,	'Nicholas Henderson',	'M',	'2020-04-10'),
(39,	'Christopher Shaw',	'M',	'2020-06-26'),
(40,	'David Zavala',	'M',	'2020-08-03'),
(41,	'Tristan Robertson',	'M',	'2020-12-16'),
(42,	'Robert Little',	'M',	'2021-03-16'),
(43,	'Jacob Fernandez',	'M',	'2021-04-17'),
(44,	'Michael Jenkins',	'M',	'2021-05-26'),
(45,	'Alan Miller',	'M',	'2021-05-28'),
(46,	'Jacob Jensen',	'M',	'2021-06-11'),
(47,	'Alexander Barrett', 'M',	'2021-08-01'),
(48,	'Nathan Jones',	'M',	'2022-02-16'),
(49,	'Michael Castillo',	'M',	'2022-07-22'),
(50,	'Ann Berry',	'F',	'2022-11-25'),
(51,	'Andrea Nguyen',	'F',	'2018-03-21'),
(52,	'Carolyn Mays',	'F',	'2018-07-04'),
(53,	'Nichole Williams',	'F',	'2018-08-24'),
(54,	'Ann Sanchez',	'F',	'2018-09-19'),
(55,	'Beth Gonzales',	'F',	'2018-09-25'),
(56,	'Sharon Mckinney',	'F',	'2018-09-28'),
(57,	'Crystal Herring',	'F',	'2019-03-16'),
(58,	'Ashley Phillips',	'F',	'2019-03-19'),
(59,	'Amber Butler',	'F',	'2020-04-24'),
(60,	'Jennifer Vaughan',	'F',	'2020-05-22'),
(61,	'Lisa Vance',	'F',	'2020-05-23'),
(62,	'Kristina Stewart',	'F',	'2020-11-05'),
(63,	'Laurie Haynes',	'F',	'2020-11-15'),
(64,	'Victoria Williamson',	'F',	'2020-11-30'),
(65,	'Julie Johnson',	'F',	'2020-12-07'),
(66,	'Victoria Solis',	'F',	'2020-12-18'),
(67,	'Michelle Sellers',	'F',	'2021-01-14'),
(68,	'Felicia Porter',	'F',	'2021-05-26'),
(69,	'Lauren Bradley',	'F',	'2021-08-31'),
(70,	'Shannon Lewis',	'F',	'2022-05-19'),
(71,	'Leslie Smith',	'F',	'2022-06-16'),
(72,	'Cynthia Bentley',	'F',	'2022-07-01'),
(73,	'Christina Schneider',	'F',	'2022-08-13'),
(74,	'Heather Valenzuela',	'F',	'2022-12-10'),
(75,	'Monica Long',	'F',	'2022-12-15'),
(76,	'Brooke Lee',	'F',	'2018-01-12'),
(77,	'Madison Reynolds',	'F',	'2018-02-19'),
(78,	'Jean Moon',	'F',	'2018-07-11'),
(79,	'Amanda Brooks',	'F',	'2018-07-12'),
(80,	'Jennifer Blevins',	'F',	'2018-08-16'),
(81,	'Kimberly Nichols',	'F',	'2018-10-06'),
(82,	'Jessica Moore',	'F',	'2019-03-23'),
(83,	'Danielle Stewart',	'F',	'2019-05-12'),
(84,	'April Roberts',	'F',	'2019-07-06'),
(85,	'Alexis Thomas',	'F',	'2019-09-25'),
(86,	'Courtney Lindsey',	'F',	'2019-12-26'),
(87,	'Allison Kirk',	'F',	'2020-03-08'),
(88,	'Ann Anderson',	'F', '2020-03-27'),
(89,	'Victoria Beasley',	'F',	'2020-05-19'),
(90,	'Maria Davis',	'F',	'2020-06-06'),
(91,	'Felicia Larsen',	'F',	'2020-08-03'),
(92,	'Yvonne Castillo',	'F',	'2020-12-28'),
(93,	'Sheena Cooke',	'F',	'2021-03-17'),
(94,	'Tabitha Jackson',	'F',	'2021-04-09'),
(95,	'Brianna Brown',	'F',	'2021-04-21'),
(96,	'Claudia Henderson',	'F',	'2021-08-03'),
(97,	'Emily Morris',	'F',	'2021-10-15'),
(98,	'Susan Hensley',	'F',	'2022-03-03'),
(99,	'Jordan Wright',	'F',	'2022-05-22'),
(100,	'Natalie Rodriguez',	'F',	'2022-11-17');



CREATE TABLE Classroom (
    Id int PRIMARY KEY,
    DayCareId int, 
    Name varchar(255), 
    Description varchar(255)
);

INSERT INTO Classroom (Id, DayCareId, Name, Description)
VALUES 
(1,	1,	'Suite A',	'Infants'),
(2,	1,	'Suite B',	'Toddlers'),
(3,	1,	'Suite C',	'Preschoolers'),
(4,	1,	'Suite D',	'After School'),
(5,	1,	'Suite E',	'KinderGarten'),
(6,	2,	'Class 100',	'1 year old'),
(7,	2,	'Class 150',	'2 year old'),
(8,	2,	'Class 200',	'3 year old'),
(9,	2,	'Class 250',	'4 year old'),
(10,	2,	'Class 300',	'5 year old'),
(11,	3,	'Room 1',	'Little Stars'),
(12,	3,	'Room 2',	'Wild Tigers'),
(13,	3,	'Room 3',	'Brave Eagles'),
(14,	3,	'Room 4',	'New Hope');


CREATE TABLE StudentClassroomAssignment (
    StudentId int,
    ClassroomId int,
    AssignmentDate date 
);
-- random student to classroom assignment
INSERT INTO StudentClassroomAssignment (ClassroomId, StudentId, AssignmentDate)
SELECT classroom_id, student_id, DATE_ADD(current_date(), INTERVAL - days_ago DAY) 
FROM
(
SELECT c.id as classroom_id, s.id as student_id, FLOOR(rand()*300) as days_ago, ROW_NUMBER() OVER(PARTITION BY s.id ORDER BY rand()) AS row_num
FROM ClassRoom AS c
CROSS JOIN Student AS s
ORDER BY rand()
) AS random_students_assignment
WHERE row_num = 1;

-- select * from StudentClassroomAssignment where StudentId = 1; 

-- select * from StudentClassroomAssignment;
-- drop table TeacherClassroomAssignment;
CREATE TABLE TeacherClassroomAssignment (
    TeacherId int,
    ClassroomId int
);

INSERT INTO TeacherClassroomAssignment (TeacherId, ClassroomId)
SELECT classroom_id, teacher_id 
FROM
(
SELECT c.id as classroom_id, t.id as teacher_id, ROW_NUMBER() OVER(PARTITION BY t.id ORDER BY rand()) AS row_num
FROM ClassRoom AS c
CROSS JOIN Teacher AS t
) AS random_teacher_assignment
WHERE row_num IN (1, 2);

INSERT INTO TeacherClassroomAssignment (TeacherId, ClassroomId)
SELECT classroom_id, teacher_id 
FROM
(
SELECT c.id as classroom_id, t.id as teacher_id, ROW_NUMBER() OVER(PARTITION BY t.id ORDER BY rand()) AS row_num
FROM ClassRoom AS c
CROSS JOIN Teacher AS t
LIMIT 10
) AS random_students_assignment
WHERE row_num IN (1);

-- SELECT * FROM TeacherClassroomAssignment WHERE classroomId = 10;
CREATE TABLE EventType (
    Id int PRIMARY KEY,
    Name varchar(255)
);

INSERT INTO EventType (Id, Name)
VALUES 
(1, 'CheckIn'),
(2,	'CheckOut'),
(3,	'Nap Start'),
(4,	'Nap End'),
(5,	'Snack'),
(6,	'Art'),
(7,	'Lunch'),
(8,	'Bathroom break');

CREATE TABLE Calendar
(
    CalendarDate date PRIMARY KEY,
    IsWorkingDay boolean
);

INSERT INTO Calendar (CalendarDate, IsWorkingDay)
SELECT CalendarDate, CASE WHEN dayofweek(CalendarDate) IN (1,7) THEN FALSE ELSE TRUE END AS IsWorkingDay
FROM
(
SELECT DATE_ADD(CURRENT_DATE(), INTERVAL - ROW_NUMBER() OVER () DAY) as CalendarDate
FROM ClassRoom AS c
CROSS JOIN Teacher AS t -- no sence to join ClassRoom  + Teacher. Just need to have generator of subsequent numbers here to use for dates generation
) AS dates;

-- generate random events for each student/teacher/classroom/event type
CREATE TABLE EventTracking (
    Id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TeacherId int,
    StudentId int,
    EventTypeId int,
    EventDatetime datetime
);
-- generate checkin & checkout events
INSERT INTO EventTracking (TeacherId, StudentId, EventDatetime,EventTypeId)
SELECT TeacherId, StudentId, EventDatetime,EventTypeId FROM 
(
-- check-in 
SELECT a.Studentid, 
	   a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (7*60 + FLOOR(rand() * 120)) minute) AS EventDatetime, 
       1 /*check-in*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
UNION ALL
-- check-out
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (16*60 + FLOOR(rand() * 180)) minute) AS EventDatetime, 
       2 /*check-out*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
-- nap start
UNION ALL
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (12*60 + FLOOR(rand() * 30)) minute) AS EventDatetime, 
       3 /*nap start*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
-- nap end
UNION ALL
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (14.5*60 + FLOOR(rand() * 30)) minute) AS EventDatetime, 
       4 /*nap end*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
-- snack
UNION ALL
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (9*60 + FLOOR(rand() * 15)) minute) AS EventDatetime, 
       5 /*snack*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
-- snack
UNION ALL
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (15*60 + FLOOR(rand() * 15)) minute) AS EventDatetime, 
       5 /*snack*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
-- art
UNION ALL
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (10.5*60 + FLOOR(rand() * 30)) minute) AS EventDatetime, 
       6 /*art*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
-- lunch
UNION ALL
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (11.5*60 + FLOOR(rand() * 20)) minute) AS EventDatetime, 
       7 /*lunch*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
-- bathroom break
UNION ALL
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (9*60 + FLOOR(rand() * 30)) minute) AS EventDatetime, 
       8 /*bathroom*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay
UNION ALL
SELECT a.StudentId, 
       a.ClassroomId,
       t.TeacherId,
       c.CalendarDate, 
       DATE_ADD(c.CalendarDate, INTERVAL (11*60 + FLOOR(rand() * 30)) minute) AS EventDatetime, 
       8 /*bathroom*/ as EventTypeId,
       ROW_NUMBER() OVER (PARTITION BY a.StudentId, a.ClassroomId, c.CalendarDate ORDER BY rand()) AS row_num
FROM StudentClassroomAssignment AS a
INNER JOIN TeacherClassroomAssignment t ON t.ClassroomId = a.ClassroomId 
CROSS JOIN Calendar AS c
WHERE a.AssignmentDate >= c.CalendarDate AND c.IsWorkingDay

) AS generated_events
WHERE row_num = 1; 





