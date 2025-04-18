-- 1. Create a database named OnlineBookstore and select it for use
CREATE DATABASE OnlineBookstore;
SHOW DATABASES;
USE OnlineBookstore;


-- 2. Create a table named Authors with the following specifications 
-- ● AuthorID: integer and primary key 
-- ● FirstName: Variable character with a maximum length of 50, cannot be null 
-- ● LastName: Variable character with a maximum length of 50, cannot be null 
CREATE TABLE Authors(
AuthorID INT PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL);

SHOW TABLES;

-- 3. Create a table named Categories with the following specifications 
-- ● CategoryID: integer and primary key 
-- ● CategoryName: Variable character with a maximum length of 50, unique
CREATE TABLE Categories(
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(50) UNIQUE);



-- 4. Create a table Books with the following specifications 
-- ● BookID: Integer and primary key 
-- ● Title: Variable character with a maximum length of 100, cannot be null 
-- ● AuthorID: Integer, foreign key referencing AuthorID in Authors table 
-- ● CategoryID: Integer, foreign key referencing CategoryID in Categories table 
-- ● Price: Decimal with 5 digits total and 2 decimal places, default value is 0.00 
-- ● PublishedDate: Date 
-- ● Stock: Integer, must be non-negative 

CREATE TABLE Books(
BookID INT PRIMARY KEY, 
Title VARCHAR(100) NOT NULL,
AuthorID INT, 
CategoryID INT,
Price DECIMAL (5,2) DEFAULT 0.00,
PublishedDate DATE,
Stock INT UNSIGNED,
FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
FOREIGN KEY (CategoryID) REFERENCES  Categories(CategoryID));


-- 5. Add a column ISBN to the Books table with the following specifications 
-- ● ISBN: Variable character with a maximum length of 13, unique 
ALTER TABLE Books ADD ISBN VARCHAR(13) UNIQUE;

-- 6. Modify the Price column in the Book` table to NOT NULL
ALTER TABLE Books MODIFY Price DECIMAL (5,2) DEFAULT 0.00 NOT NULL;

-- 7. Insert the following data into the Authors table 
-- ● 'J.K.', 'Rowling' 
-- ● 'George', 'Orwell' 
-- ● 'J.R.R.', 'Tolkien'
INSERT INTO Authors (AuthorID, FirstName, LastName) 
Values ( 1, 'J.K', 'ROWLING'), (2, 'GEORGE','ORWELL'), (3, 'J.R.R', 'TOLKIEN');

-- 8. Insert the following data into the Categories table 
-- ● 'Fantasy' 
-- ● 'Science Fiction'
--  ● 'Dystopian' 
INSERT INTO Categories (CategoryID, CategoryName) 
Values ( 1, 'Fantasy'), (2, 'Science Fiction'), (3, 'Dystopian');


-- 9. Insert the following data into the Books table 
-- ● 1,'Harry Potter and the Sorcerer's Stone', 1, 1, 19.99, '1997-06-26', 100, 
-- '9780747532699' 
-- ● 2,'1984', 2, 3, 14.99, '1949-06-08', 200, '9780451524935' 
-- ● 3,'The Hobbit', 3, 1, 15.99, '1937-09-21', 150, '9780547928227'
INSERT INTO Books (BookID, Title, AuthorID, CategoryID, Price, PublishedDate, Stock, ISBN) 
Values (1,'Harry Potter and the Sorcerer"s Stone', 1, 1, 19.99, '1997-06-26', 100, '9780747532699' ), 
(2,'1984', 2, 3, 14.99, '1949-06-08', 200, '9780451524935' ), 
(3,'The Hobbit', 3, 1, 15.99, '1937-09-21', 150, '9780547928227');


-- 10. Update the Price of the book 1984 to 17.99 
UPDATE BOOKS SET Price = 17.99 where Price = 1984; 

-- 11. Update the Stock of the book with BookID 1 by adding 50 to its current value 
select * from Books;
UPDATE BOOKS SET STOCK = STOCK + 50 WHERE BookID = 1;


-- 12. How do you delete the book record with BookID 3? 
DELETE FROM Books WHERE BookID = 3;

-- 13. Truncate the Books table 
TRUNCATE Books;

-- 14. Rename the Authors table to BookAuthors 
ALTER TABLE Authors RENAME BookAuthors;
SELECT * FROM BookAuthors;

-- 15. Add a check constraint to ensure the Price in Books is non-negative 
ALTER TABLE Books ADD CONSTRAINT `chk_price` CHECK ((`Price` > 0));

-- 16. Remove the check constraint chk_price from the Books table
ALTER TABLE Books DROP CHECK chk_price;
show tables;
SELECT * FROM BOOKS;

