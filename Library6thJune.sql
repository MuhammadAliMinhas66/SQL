-- table one Books
CREATE TABLE Books (
BookID INT IDENTITY(1,1) PRIMARY KEY ,
Title VARCHAR(50) ,
GenreID INT ,
PublisherID INT , 
AvailableCopies INT
);

-- table two Genres
CREATE TABLE Genres (
GenreID INT IDENTITY(1,1) PRIMARY KEY ,
GenreName VARCHAR(50),
AgeGroup VARCHAR(50),
Description NVARCHAR(100)
);
    
--table three Members
CREATE TABLE Members (
MemberID INT IDENTITY(1,1) PRIMARY KEY,
Name VARCHAR(100),
Address NVARCHAR(100),
Phone VARCHAR(50),
MemberShipDate DATE
);

--table four Reservations
CREATE TABLE Reservation ( 
ReservationID INT IDENTITY(1,1) PRIMARY KEY,
MemberID INT,
BookID INT,
ReservationDate DATE,
Status VARCHAR(50)
);

--table five Fines
CREATE TABLE Fines (
FineID INT IDENTITY(1,1) PRIMARY KEY,
MemberID INT,
ReservationID INT,
Amount INT,
PaidStatus VARCHAR(20)
);

-- inserts into books
INSERT INTO Books (Title, GenreID, PublisherID, AvailableCopies)
VALUES
('A Politician''s Guide', 1, 1, 5),
('Container Se Parliament Tak', 1, 2, 4),
('Promises Valid Until Election Day', 4, 1, 6),
('Committee Bana Di Gayi Hai', 5, 2, 3),
('How to Blame the Previous Government', 4, 3, 5),
('VIP Protocol Aur Aam Banda', 2, 1, 4),
('Press Conference Mein Sawal Mat Pucho', 4, 2, 7),
('Load Shedding Aur Leader Shedding', 2, 3, 3),
('Manifesto: Read Before Sleeping', 3, 1, 5),
('Breaking Alliances for Dummies', 1, 2, 6),
('Meri Baat Ko Ghalat Samjha Gaya', 4, 2, 2),
('Chair Bachao Movement', 5, 3, 4),
('Vote Mango, Wi-Fi Nahi', 4, 1, 6),
('Political Musical Chairs Championship', 2, 2, 5),
('Speech Lambi, Kaam Chhota', 1, 3, 3);

-- checking all the data 
SELECT * FROM Books;

-- removed the previous data because it had different glitched
truncate table Books

-- adding data into Genres Table
INSERT INTO Genres (GenreName, AgeGroup, Description)
VALUES
('Political Satire', '18+', 'Humorous books inspired by Pakistani politics'),
('Biography', 'All', 'Life stories of political leaders'),
('Political History', '16+', 'History of governments, elections, and major events'),
('Comedy', '15+', 'Funny political stories and satire'),
('Current Affairs', '18+', 'Modern political issues and public policy');

-- checking all inserted data in Genres Table
SELECT * FROM Genres;

-- insert into members table
INSERT INTO Members (Name, Address, Phone, MemberShipDate)
VALUES
('Imran Khan', 'Lahore', '03001111111', '2024-01-15'),
('Nawaz Sharif', 'Lahore', '03002222222', '2024-02-10'),
('Shehbaz Sharif', 'Lahore', '03003333333', '2024-03-05'),
('Bilawal Bhutto Zardari', 'Karachi', '03004444444', '2024-03-20'),
('Asif Ali Zardari', 'Karachi', '03005555555', '2024-04-01'),
('Maryam Nawaz', 'Lahore', '03006666666', '2024-04-18'),
('Fazlur Rehman', 'Dera Ismail Khan', '03007777777', '2024-05-02'),
('Siraj ul Haq', 'Lower Dir', '03008888888', '2024-05-15'),
('Pervez Musharraf', 'Karachi', '03009999999', '2024-06-01'),
('Chaudhry Shujaat Hussain', 'Gujrat', '03001010101', '2024-06-20');    

-- checking all data from members table
SELECT * FROM Members;   

-- insert into reservation table
INSERT INTO Reservation (MemberID, BookID, ReservationDate, Status)
VALUES
(1, 1, '2025-01-10', 'Returned'),
(2, 3, '2025-01-12', 'Borrowed'),
(3, 5, '2025-01-15', 'Returned'),
(4, 2, '2025-01-18', 'Reserved'),
(5, 10, '2025-01-20', 'Borrowed'),
(6, 7, '2025-01-25', 'Late'),
(7, 11, '2025-02-01', 'Returned'),
(8, 8, '2025-02-03', 'Borrowed'),
(9, 14, '2025-02-07', 'Returned'),
(10, 6, '2025-02-10', 'Reserved'),
(1, 13, '2025-02-15', 'Borrowed'),
(2, 15, '2025-02-18', 'Late'),
(3, 4, '2025-02-22', 'Returned'),
(4, 9, '2025-02-25', 'Borrowed'),
(5, 12, '2025-03-01', 'Returned');       

-- checking all data from reservation table
SELECT * FROM Reservation;


-- insert into fines table
INSERT INTO Fines (MemberID, ReservationID, Amount, PaidStatus)
VALUES
(6, 6, 500, 'Unpaid'),
(2, 12, 750, 'Paid'),
(5, 5, 300, 'Unpaid'),
(8, 8, 200, 'Paid'),
(4, 4, 150, 'Unpaid'),
(10, 10, 100, 'Paid');

-- checking all data from fines table
SELECT * FROM Fines;


-- other queries
SELECT * FROM Reservation WHERE MemberID >= 2 AND Status = 'Returned';


SELECT * FROM Reservation WHERE MemberID >= 2 AND BookID >=2 AND Status = 'Borrowed';