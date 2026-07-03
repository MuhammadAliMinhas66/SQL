Create TABLE CustomersTest (CustomerID INT,	CustomerName NVARCHAR(MAX), 	ContactName NVARCHAR(Max), 	Address	NVARCHAR(MAX), City NVARCHAR(MAX), PostalCode	INT, Country NVARCHAR(MAX));
SELECT * FROM Customers;
INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(1, 'Alpine Electronics GmbH', 'Maria Anders', 'Obere Str. 57', 'Berlin', 12209, 'Australia');

INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(2, 'Northwind Trading Ltd.', 'James Walker', '45 King Street', 'London', 13366, 'United Kingdom');

INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(3, 'Pacific Foods Inc.', 'Emily Johnson', '125 Ocean Drive', 'San Diego', 92101, 'USA');

INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(4, 'Maple Leaf Supplies', 'David Thompson', '89 Queen Street', 'Toronto', 75664, 'USA');

INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(5, 'Sydney Office Solutions', 'Olivia Brown', '18 George Street', 'Sydney', 20009, 'Australia');

SELECT * FROM CustomersTest;

SELECT DISTINCT Country FROM CustomersTest;
SELECT Country FROM CustomersTest;

INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(6, 'Newbies', 'Haji Khan', '99X Kalma Chowk', 'Islamabad', 20009, 'Pakistan');
INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(7, 'Nouman', 'Faqeeran Wali', 'XLLL Nira Town', 'Karanchi', 300601, 'Pakistan');
SELECT * FROM CustomersTest WHERE Country = 'PAKISTAN';
INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(10, 'Hazle', 'Nibyyan Wali', 'TankiOnline', 'Peshawar', 300601, 'PaKiSTaN');
SELECT * FROM CustomersTest WHERE City = ' Peshawar';
INSERT INTO CustomersTest (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(11, 'Zeeshan', 'Sahiwal', 'MIS MAster', ' Peshawar', 622201, 'PaKiSTaN');
SELECT * FROM CustomersTest WHERE City = ' Peshawar';