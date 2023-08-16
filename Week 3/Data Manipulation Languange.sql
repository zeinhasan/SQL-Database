
--- CREATE DATABASE ---
CREATE DATABASE minggu4;

--- Use Database ---
USE minggu4;

--- CREATE TABLE ---
CREATE TABLE student(
    NIM INT AUTO_INCREMENT PRIMARY KEY NOT NUll,
    Name VARCHAR(300) NOT NULL,
    City_Address varchar(300) NOT NULL,
    Age INT NOT NULL,
    IPK DECIMAL(3,2) NOT NULL,
    Departement Varchar(100)
);

--- INSERT DATA ---
INSERT INTO student(NIM,Name,City_Address,Age,IPK,Departement)
VALUES
(12345,"Adi","Jakarta",17,2.5,"Math"),
(12346,"Ani","Yogyakarta",20,2.1,"Math"),
(12347,"Ari","Surabaya",18,2.5,"Computer"),
(12348,"Ali","Banjarmasin",20,3.5,"Computer"),
(12349,"Abi","Medan",17,3.7,"Computer"),
(12350,"Budi","Jakarta",19,3.8,"Computer"),
(12351,"Boni","Yogyakarta",20,3.2,"Computer"),
(12352,"Bobi","Surabaya",17,2.7,"Computer"),
(12353,"Beni","Banjarmasin",18,2.3,"Computer"),
(12354,"Cepi","Jakarta",20,2.2,NULL),
(12355,"Coni","Yogyakarta",22,2.6,NULL),
(12356,"Ceki","Surabaya",21,2.5,"Math"),
(12357,"Dodi","Jakarta",20,3.1,"Math"),
(12358,"Didi","Yogyakarta",19,3.2,"Physics"),
(12359,"Deri","Surabaya",19,3.3,"Physics"),
(12360,"Eli","Jakarta",20,2.9,"Physics"),
(12361,"Endah","Yogyakarta",18,2.8,"Physics"),
(12362,"Feni","Jakarta",17,2.7,NULL),
(12363,"Farah","Yogyakarta",18,3.5,NULL),
(12364,"Fandi","Surabaya",19,3.4,NULL);


--- SELECT DATA ---
SELECT DISTINCT City_Address
FROM student;

--- SELECT DATA ---
SELECT Name
FROM student
WHERE
	Departement ="Computer";

--- SELECT DATA ---
SELECT NIM,Name,Age,City_Address
FROM student
ORDER BY Age DESC;

--- SELECT DATA ---
SELECT Name,Age
FROM student
WHERE City_Address = "Jakarta"
ORDER BY Age
LIMIT 3;

--- SELECT DATA ---
SELECT Name, IPK
FROM student
WHERE City_Address ="Jakarta" AND IPK < 2.5;

--- SELECT DATA ---
SELECT Name
FROM student
WHERE
City_Address ='Yogyakarta' OR Age > 20;

--- SELECT DATA ---
SELECT Name, City_Address
FROM student
WHERE 
City_Address NOT IN ('Jakarta','Surabaya');


--- SELECT DATA ---
SELECT Name, Age, IPK
FROM student
WHERE
IPK BETWEEN 2.5 AND 3.5;

--- SELECT DATA ---
SELECT Name
FROM student
WHERE
Name LIKE '%a%';

--- SELECT DATA ---
SELECT NIM
FROM student
WHERE
	Name IS NULL OR 
    City_Address IS NULL OR 
    Age IS NULL OR 
    IPK IS NULL OR 
    Departement IS NULL;








