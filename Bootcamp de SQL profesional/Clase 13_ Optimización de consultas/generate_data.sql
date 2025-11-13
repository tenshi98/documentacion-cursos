-- Books: 1,000 rows
CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    AuthorID INTEGER
);

WITH RECURSIVE seq(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 1000
)
INSERT INTO Books (BookID, Title, AuthorID)
SELECT 
    n AS BookID,
    'Book ' || n AS Title,
    CASE 
        WHEN n % 10 = 0 THEN NULL  -- 10% of books have no author
        ELSE (n % 200) + 1  -- AuthorIDs from 1 to 200
    END AS AuthorID
FROM seq;

-- Authors: 200 rows
CREATE TABLE Authors (
    AuthorID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL
);

WITH RECURSIVE seq(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 200
)
INSERT INTO Authors (AuthorID, Name)
SELECT 
    n AS AuthorID,
    'Author ' || n AS Name
FROM seq;

-- Publishers: 50 publishers, 1,000 links
CREATE TABLE Publishers (
    PublisherID INTEGER,
    PublisherName TEXT NOT NULL,
    BookID INTEGER,
    PRIMARY KEY (PublisherID, BookID)
);

WITH RECURSIVE seq(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 1000
)
INSERT INTO Publishers (PublisherID, PublisherName, BookID)
SELECT 
    (n - 1) / 20 + 1 AS PublisherID,  -- 50 publishers, 20 books each
    'Publisher ' || ((n - 1) / 20 + 1) AS PublisherName,
    n AS BookID
FROM seq;

-- Borrowers: 500 rows
CREATE TABLE Borrowers (
    BorrowerID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL
);

WITH RECURSIVE seq(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 500
)
INSERT INTO Borrowers (BorrowerID, Name)
SELECT 
    n AS BorrowerID,
    'Borrower ' || n AS Name
FROM seq;

-- BookBorrowers: 10,000 rows
CREATE TABLE BookBorrowers (
    BookID INTEGER,
    BorrowerID INTEGER,
    PRIMARY KEY (BookID, BorrowerID)
);

WITH RECURSIVE seq(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 10000
)
INSERT OR IGNORE INTO BookBorrowers (BookID, BorrowerID)
SELECT 
    (ABS(RANDOM()) % 1000) + 1 AS BookID,  -- Random BookID from 1 to 1000
    (ABS(RANDOM()) % 500) + 1 AS BorrowerID  -- Random BorrowerID from 1 to 500
FROM seq;





