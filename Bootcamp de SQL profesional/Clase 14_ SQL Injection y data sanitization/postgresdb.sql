-- Books: 1,000 rows
CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    AuthorID INTEGER
);

INSERT INTO Books (BookID, Title, AuthorID)
SELECT 
    n AS BookID,
    'Book ' || n AS Title,
    CASE 
        WHEN n % 10 = 0 THEN NULL  -- 10% of books have no author
        ELSE (n % 200) + 1  -- AuthorIDs from 1 to 200
    END AS AuthorID
FROM GENERATE_SERIES(1, 1000) n;

-- Authors: 200 rows
CREATE TABLE Authors (
    AuthorID INTEGER PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

INSERT INTO Authors (AuthorID, Name)
SELECT 
    n AS AuthorID,
    'Author ' || n AS Name
FROM GENERATE_SERIES(1, 200) n;

-- Publishers: 50 publishers, 1,000 links
CREATE TABLE Publishers (
    PublisherID INTEGER,
    PublisherName VARCHAR(50) NOT NULL,
    BookID INTEGER,
    PRIMARY KEY (PublisherID, BookID)
);

INSERT INTO Publishers (PublisherID, PublisherName, BookID)
SELECT 
    (n - 1) / 20 + 1 AS PublisherID,  -- 50 publishers, 20 books each
    'Publisher ' || ((n - 1) / 20 + 1) AS PublisherName,
    n AS BookID
FROM GENERATE_SERIES(1, 1000) n;

-- Borrowers: 500 rows
CREATE TABLE Borrowers (
    BorrowerID INTEGER PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

INSERT INTO Borrowers (BorrowerID, Name)
SELECT 
    n AS BorrowerID,
    'Borrower ' || n AS Name
FROM GENERATE_SERIES(1, 500) n;

-- BookBorrowers: 10,000 rows
CREATE TABLE BookBorrowers (
    BookID INTEGER,
    BorrowerID INTEGER,
    PRIMARY KEY (BookID, BorrowerID)
);

INSERT INTO BookBorrowers (BookID, BorrowerID)
SELECT 
    FLOOR(RANDOM() * 1000) + 1 AS BookID,  -- Random BookID from 1 to 1000
    FLOOR(RANDOM() * 500) + 1 AS BorrowerID  -- Random BorrowerID from 1 to 500
FROM GENERATE_SERIES(1, 10000) n
ON CONFLICT DO NOTHING;  -- Skip duplicates due to primary key
