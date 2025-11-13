-- Books: 1,000 rows
CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    AuthorID INTEGER
);

WITH RECURSIVE seq(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 100000000
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
