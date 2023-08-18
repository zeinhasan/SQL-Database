--- Create DATABASE ---
CREATE DATABASE library;

--- Use DATABASE ---
USE library;

--- Create Table ---
CREATE TABLE book(
    bookID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    bookTitle VARCHAR(255) NOT NULL, 
    authorName VARCHAR(255) NOT NULL, 
    borrowedStatus ENUM ('Y','N') NOT NULL);

--- Create Table ---
CREATE TABLE flow( 
    flowID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userIDBorrowing INT NOT NULL,  
    bookIDBorrowed INT NOT NULL, 
    borrowDate DATE, 
    returnDate DATE);

--- Create Table ---
CREATE TABLE Users(
    userID INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    userName VARCHAR (255) NOT NULL, 
    numberOfBorrowing INT, 
    numberOfReturning INT);

--- Insert Data ---
INSERT INTO book(bookID,bookTitle, authorName, borrowedStatus)
VALUES
(0001,'Rancangan Percobaan','Agus','Y'),
(0002,'Explorasi dan Visualisasi Data','Adi','Y'),
(0003,'Komputasi Statistika','Anton','N'),
(0004,'Dasar-Dasar Aljabar Matriks','Ali','Y'),
(0005,'Pengantar Statistika Matematika','Budi','N'),
(0006,'Kalkulus Multivariabel','Cilla','Y'),
(0007,'Metode Survei Sample','Maya','N'),
(0008,'Statistika Multivariat','Adri','Y'),
(0009,'Kalkulus Lanjut','Fandi','N'),
(0010,'Metode Statistika','Boni','N');

--- Insert Data ---
INSERT INTO flow (flow.flowID, userIDBorrowing, bookIDBorrowed, borrowDate,
returnDate)
VALUES
(12345,20277,0001,'2022-04-10','2022-04-11'),
(12346,20278,0002,'2022-04-11','2022-04-12'), 
(12347,20279,0003,'2022-04-16','2022-04-17'),
(12348,20277,0001,'2022-04-18',CURRENT_DATE),
(12349,20277,0002,'2022-04-18',CURRENT_DATE),
(12350,20277,0003,'2022-04-2','2022-04-03'),
(12351,20278,0004,'2022-04-18',CURRENT_DATE),
(12352,20278,0005,'2022-04-1','2022-04-02'),
(12353,20278,0006,'2022-04-18',CURRENT_DATE),
(12364,20279,0007,'2022-04-5','2022-04-06'),
(12365,20280,0008,'2022-04-18',CURRENT_DATE);

--- Insert Data ---
INSERT INTO users(userID, userName, numberOfBorrowing, numberOfReturning)
VALUES
(20277, 'Zein', 4, 4),
(20278, 'Rizhal', 4, 4),
(20279, 'Olla', 2, 2),
(20280, 'Carolina',1,1),
(20281, 'Syafi',3,2),
(20282, 'Tara',1,1),
(20283, 'Nisa',0,0),
(20284, 'Salsadila',2,1),
(20285,'Neti',4,4),
(20286,'Mozaya',2,2);


--- Query ---
SELECT book.bookTitle 
FROM book 
INNER JOIN flow
ON book.bookID = flow.bookIDBorrowed
WHERE book.borrowedStatus = 'Y' 
AND flow.borrowDate = DATE_SUB(CURDATE(), INTERVAL 1 DAY);


--- Query ---
SELECT DISTINCT book.bookTitle, flow.userIDBorrowing
FROM book 
LEFT JOIN flow
ON book.bookID = flow.bookIDBorrowed

--- Query ---
SELECT DISTINCT book.bookTitle, users.userID
FROM book INNER JOIN flow 
ON book.bookID = flow.bookIDBorrowed
RIGHT JOIN users 
ON flow.userIDBorrowing = users.userID

--- Query ---
SELECT DISTINCT book.bookTitle, users.userName
FROM book LEFT JOIN flow 
ON book.bookID = flow.bookIDBorrowed
LEFT JOIN users 
ON flow.userIDBorrowing = users.userID
WHERE users.numberOfBorrowing > 3;


