--- CREATE DATABASE AND TABLES ---
CREATE DATABASE store;

USE store;
CREATE TABLE Customer(
    customerNumber varchar(5) NOT NULL PRIMARY KEY,
    customerName varchar(255) NOT NULL,
    city varchar(100)
);

CREATE TABLE Product(
    productNumber varchar(5) NOT NULL PRIMARY KEY,
    productName varchar(100) NOT NULL,
    stock INT(3) DEFAULT 15
);

CREATE TABLE Transaction (
	transactionNumber varchar(5) NOT NULL PRIMARY KEY,
    transactionDate DATE,
    customerNumber varchar(5), 
    FOREIGN KEY (customerNumber) REFERENCES Customer(customerNumber)
);

USE store;

--- UPDATE TABLES ---
INSERT INTO 
	customer(customerNumber,customerName,city)
VALUES
	("C-003","Geneva Electronic","Bandung"),
    	("C-007","Gama Store","Yogyakarta"),
    	("C-009","Family Mart","Medan"),
    	("C-011","Star Store"," Bandung ");

--- UPDATE TABLES ---
INSERT INTO
	product(productNumber,productName,stock)
VALUES
	("P-100","Monitor 17",DEFAULT),
    	("P-120","Keyboard Ps2",20),
    	("P-123","Mouse Ps2",DEFAULT),
    	("P-125","Memory 512",10);

--- UPDATE TABLES ---
INSERT INTO 
	transaction(transactionNumber,transactionDate,customerNumber)
VALUES
	("T-001","2019-10-19","C-011"),
  	("T-002","2020-01-10","C-003"),
    	("T-003","2020-08-07","C-009"),
    	("T-004","2020-09-09","C-007");

--- SELECT DISTINCT DATA ---
USE store;
SELECT DISTINCT
	city
FROM
	customer;

--- SELECT ALL DATA ---
USE store;
SELECT * FROM customer;

--- SELECT DATA FROM  productName and stock Column ---
USE store;
SELECT
	productName,
    stock
FROM 
	product;

--- Select data with condition ---
USE store;
SELECT 
	customerName
FROM
	customer
WHERE
	city="Bandung";


--- Select data with condition ---
USE store;
SELECT
	transactionDate
FROM
	transaction
WHERE
	customerNumber = "C-007";

--- Select data with condition ---
USE store;
SELECT * FROM product
WHERE stock = 15;

--- Select data with condition ---
USE store;
UPDATE transaction
SET
	transactionDate = CURRENT_DATE
WHERE
	customerNumber = "C-007";

--- Select data with condition ---
USE store;
UPDATE customer
SET
customerName = "HappyFamily Mart",
city = "Jakarta"
WHERE
	customerNumber = "C-009";

--- Select data with condition ---
USE store;
SELECT 
	customerName,city
FROM
	customer
WHERE
 	customerNumber = "C-009";


--- Select data with condition ---
USE store;
INSERT INTO
	product(productNumber,productName,stock)
VALUES
	("P-130","NIC D-Link ",DEFAULT);

--- Select data with condition ---
USE store;
SELECT *FROM product;

--- Update Data ---
USE store;
INSERT INTO transaction(transactionNumber,transactionDate,customerNumber)
VALUES
	("T-005",CURRENT_DATE,"C-003"),
   	 ("T-006",CURRENT_DATE,"C-011");

--- Delete Data ---
USE store;
DELETE FROM transaction
ORDER BY transactionNumber
LIMIT 2;

USE store;
DELETE FROM transaction
ORDER BY transactionNumber DESC
LIMIT 2;


