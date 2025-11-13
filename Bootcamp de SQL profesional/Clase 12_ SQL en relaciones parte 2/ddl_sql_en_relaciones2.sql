-- Create Tables
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    AuthorID INT
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(50) NOT NULL,
    BookID INT
);

CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE BookBorrowers (
    BookID INT,
    BorrowerID INT,
    PRIMARY KEY (BookID, BorrowerID)
);

-- Insert Sample Data
INSERT INTO Books (BookID, Title, AuthorID) VALUES
(1, 'SQL Basics', 101),
(2, 'Algebra Fun', 102),
(3, 'Lost Book', NULL);

INSERT INTO Authors (AuthorID, Name) VALUES
(101, 'Jane Doe'),
(103, 'John Smith');

INSERT INTO Publishers (PublisherID, PublisherName, BookID) VALUES
(1, 'Penguin', 1),
(2, 'OReilly', 2);

INSERT INTO Borrowers (BorrowerID, Name) VALUES
(101, 'Jane Doe'),
(201, 'Alice Brown');

INSERT INTO BookBorrowers (BookID, BorrowerID) VALUES
(1, 101),
(1, 201),
(2, 101);
