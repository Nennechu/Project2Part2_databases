DROP TABLE BOOK_AUTHORS;
DROP TABLE BOOK_COPIES;
DROP TABLE BOOK_LOANS;
DROP TABLE BOOK;
DROP TABLE BORROWER;
DROP TABLE LIBRARY_BRANCH;
DROP TABLE PUBLISHER;

CREATE TABLE PUBLISHER (
    Publisher_Name VARCHAR(30) NOT NULL,
    Phone VARCHAR(12) NOT NULL,
    Address VARCHAR(60) NOT NULL,
    PRIMARY KEY(Publisher_Name)
);

INSERT INTO PUBLISHER VALUES('HarperCollins', '212-207-7000', '195 Broadway, New York, NY 10007');
INSERT INTO PUBLISHER VALUES('Penguin Books', '212-366-3000', '475 Hudson St, New York, NY 10014');
INSERT INTO PUBLISHER VALUES('Penguin Classics', '212-366-2000', '123 Main St, California, CA 01383');
INSERT INTO PUBLISHER VALUES('Scribner', '212-207-7474', '19 Broadway, New York, NY 10007');
INSERT INTO PUBLISHER VALUES('Harper & Row', '212-207-7000', '1195 Border street, Montana, MT 59007');
INSERT INTO PUBLISHER VALUES('Little, Brown and Company', '212-764-2000', '111 Huddle St, New Jersey, NJ 32014');
INSERT INTO PUBLISHER VALUES('Faber and Faber', '201-797-3800', '463 south centre street, Arizona, AR 71653');
INSERT INTO PUBLISHER VALUES('Chatto & Windus', '442-727-3800', 'Bloomsbury House, 7477 Great Russell St, Arizona, AR 72965');
INSERT INTO PUBLISHER VALUES('Ward, Lock and Co.', '647-242-3434', '456 Maple Ave, Texas, TX 76013 ');
INSERT INTO PUBLISHER VALUES('Random House India', '291-225-6634', '423 baywatch centre street, Alabama, AL 30513');
INSERT INTO PUBLISHER VALUES('Thomas Cautley Newby', '243-353-2352', '890 Elmwood Dr, Floride, FL 98238');
INSERT INTO PUBLISHER VALUES('Allen & Unwin', '212-782-9001', '22 New Wharf Rd, Arizona, AR 70654');
INSERT INTO PUBLISHER VALUES('Pan Books', '313-243-5353', '567 Pine Tree Rd, Colorado, CO 87348');
INSERT INTO PUBLISHER VALUES('Bantam Books', '313-243-5354', '1745 Broadway, New York, NY 10019');
INSERT INTO PUBLISHER VALUES('Doubleday', '212-782-9000', '789 Division St, Minnesota, MN 55344');
INSERT INTO PUBLISHER VALUES('American Publishing Company', '682-243-3524', '7652 Northgate way lane, Georgia, GA 30054');
INSERT INTO PUBLISHER VALUES('Chapman and Hall', '833-342-2343', '789 Oak St, Texas, TX 76010');

CREATE TABLE LIBRARY_BRANCH (
    Branch_Id INT NOT NULL,
    Branch_Name VARCHAR(15) NOT NULL,
    Branch_Address VARCHAR(35) NOT NULL,
    PRIMARY KEY(Branch_Id)
);

INSERT INTO LIBRARY_BRANCH VALUES(1, 'Main Branch', '123 Main St, New York, NY 10003');
INSERT INTO LIBRARY_BRANCH VALUES(2, 'West Branch', '456 West St, Arizona, AR 70622');
INSERT INTO LIBRARY_BRANCH VALUES(3, 'East Branch', '789 East St, New Jersy, NY 32032');

CREATE TABLE BORROWER (
    Card_No INT,
    Name VARCHAR(15) NOT NULL,
    Address VARCHAR(40) NOT NULL,
    Phone VARCHAR(12) NOT NULL,
    PRIMARY KEY(Card_No)
);

INSERT INTO BORROWER VALUES(123456, 'John Smith', '456 Oak St, Arizona, AR 70010', '205-555-5555');
INSERT INTO BORROWER VALUES(789012, 'Jane Doe', '789 Maple Ave, New Jersey, NJ 32542', '555-235-5556');
INSERT INTO BORROWER VALUES(345678, 'Bob Johnson', '12 Elm St, Arizona, AR 70345', '545-234-5557');
INSERT INTO BORROWER VALUES(901234, 'Sarah Kim', '345 Pine St, New York, NY 10065', '515-325-2158');
INSERT INTO BORROWER VALUES(567890, 'Tom Lee', '678  S Oak St, New York, NY 10045', '209-525-5559');
INSERT INTO BORROWER VALUES(234567, 'Emily Lee', '389 Oaklay St, Arizona, AR 70986', '231-678-5560');
INSERT INTO BORROWER VALUES(890123, 'Michael Park', '123 Pinewood St, New Jersey, NJ 32954', '655-890-2161');
INSERT INTO BORROWER VALUES(456789, 'Laura Chen', '345 Mapman Ave, Arizona, AR 70776', '565-985-9962');
INSERT INTO BORROWER VALUES(111111, 'Alex Kim', '983 Sine St, Arizona, AR 70451', '678-784-5563');
INSERT INTO BORROWER VALUES(222222, 'Rachel Lee', '999 Apple Ave, Arizona, AR 70671', '231-875-5564');
INSERT INTO BORROWER VALUES(333333, 'William Johnson', '705 Paster St, New Jersey 32002', '235-525-5567');
INSERT INTO BORROWER VALUES(444444, 'Ethan Martinez', '466 Deeplm St, New York, NY 10321', '555-555-5569');
INSERT INTO BORROWER VALUES(555555, 'Grace Hernandez', '315 Babes St, Arizona, AR 70862', '455-567-5587');
INSERT INTO BORROWER VALUES(565656, 'Sophia Park', '678 Dolphin St, New York, NY 10062', '675-455-5568');
INSERT INTO BORROWER VALUES(676767, 'Olivia Lee', '345 Spine St, New York, NY 10092', '435-878-5569');
INSERT INTO BORROWER VALUES(787878, 'Noah Thompson', '189 GreenOak Ave, New Jersey, NJ 32453', '245-555-5571');
INSERT INTO BORROWER VALUES(989898, 'Olivia Smith', '178 Elm St, New Jersey, NJ 32124', '325-500-5579');
INSERT INTO BORROWER VALUES(121212, 'Chloe Park', '345 Shark St, Arizona, AR 72213', '755-905-5572');
INSERT INTO BORROWER VALUES(232323, 'William Chen', '890 Sting St, New York, NY 10459', '406-755-5580');
INSERT INTO BORROWER VALUES(343434, 'Olivia Johnson', '345 Pine St, New Jersey, NJ 32095', '662-554-5575');
INSERT INTO BORROWER VALUES(454545, 'Dylan Kim', '567 Cowboy way St, New Jersey, NJ 32984', '435-254-5578');

CREATE TABLE BOOK (
    Book_Id INT NOT NULL,
    Title VARCHAR(40) NOT NULL,
    Publisher_Name VARCHAR(30) NOT NULL,
    PRIMARY KEY(Book_Id),
    FOREIGN KEY(Publisher_Name) REFERENCES PUBLISHER(Publisher_Name)
);

INSERT INTO BOOK VALUES(1, 'To Kill a Mockingbird', 'HarperCollins');
INSERT INTO BOOK VALUES(2, '1984', 'Penguin Books');
INSERT INTO BOOK VALUES(3, 'Pride and Prejudice', 'Penguin Classics');
INSERT INTO BOOK VALUES(4, 'The Great Gatsby', 'Scribner');
INSERT INTO BOOK VALUES(5, 'One Hundred Years of Solitude', 'Harper & Row');
INSERT INTO BOOK VALUES(6, 'Animal Farm', 'Penguin Books');
INSERT INTO BOOK VALUES(7, 'The Catcher in the Rye', 'Little, Brown and Company');
INSERT INTO BOOK VALUES(8, 'Lord of the Flies', 'Faber and Faber');
INSERT INTO BOOK VALUES(9, 'Brave New World', 'Chatto & Windus');
INSERT INTO BOOK VALUES(10, 'The Picture of Dorian Gray', 'Ward, Lock and Co.');
INSERT INTO BOOK VALUES(11, 'The Alchemist', 'HarperCollins');
INSERT INTO BOOK VALUES(12, 'The God of Small Things', 'Random House India');
INSERT INTO BOOK VALUES(13, 'Wuthering Heights', 'Thomas Cautley Newby');
INSERT INTO BOOK VALUES(14, 'The Hobbit', 'Allen & Unwin');
INSERT INTO BOOK VALUES(15, 'The Lord of the Rings', 'Allen & Unwin');
INSERT INTO BOOK VALUES(16, 'The Hitchhikers Guide to the Galaxy', 'Pan Books');
INSERT INTO BOOK VALUES(17, 'The Diary of a Young Girl', 'Bantam Books');
INSERT INTO BOOK VALUES(18, 'The Da Vinci Code', 'Doubleday');
INSERT INTO BOOK VALUES(19, 'The Adventures of Huckleberry Finn', 'Penguin Classics');
INSERT INTO BOOK VALUES(20, 'The Adventures of Tom Sawyer', 'American Publishing Company');
INSERT INTO BOOK VALUES(21, 'A Tale of Two Cities', 'Chapman and Hall');

CREATE TABLE BOOK_LOANS (
    Book_Id INT NOT NULL,
    Branch_Id INT NOT NULL,
    Card_No INT,
    Date_Out DATE NOT NULL,
    Due_Date DATE NOT NULL,
    Returned_Date DATE,
    PRIMARY KEY(Book_Id, Branch_Id, Card_No),
    FOREIGN KEY(Book_Id) REFERENCES BOOK(Book_Id),
    FOREIGN KEY(Branch_Id) REFERENCES LIBRARY_BRANCH(Branch_Id),
    FOREIGN KEY(Card_No) REFERENCES BORROWER(Card_No)
);

INSERT INTO BOOK_LOANS VALUES(1,1,123456,'2022-01-01','2022-02-01','2022-02-01');
INSERT INTO BOOK_LOANS VALUES(2,1,789012,'2022-01-02','2022-02-02',NULL);
INSERT INTO BOOK_LOANS VALUES(3,2,345678,'2022-01-03','2022-02-03',NULL);
INSERT INTO BOOK_LOANS VALUES(4,3,901234,'2022-01-04','2022-02-04','2022-02-04');
INSERT INTO BOOK_LOANS VALUES(5,1,567890,'2022-01-05','2022-02-05','2022-02-09');
INSERT INTO BOOK_LOANS VALUES(6,2,234567,'2022-01-06','2022-02-06','2022-02-10');
INSERT INTO BOOK_LOANS VALUES(7,2,890123,'2022-01-07','2022-02-07','2022-03-08');
INSERT INTO BOOK_LOANS VALUES(8,3,456789,'2022-01-08','2022-02-08','2022-03-10');
INSERT INTO BOOK_LOANS VALUES(9,1,111111,'2022-01-09','2022-02-09','2022-02-06');
INSERT INTO BOOK_LOANS VALUES(10,2,222222,'2022-01-10','2022-02-10','2022-02-07');
INSERT INTO BOOK_LOANS VALUES(11,1,333333,'2022-03-01','2022-03-08','2022-03-08');
INSERT INTO BOOK_LOANS VALUES(12,3,444444,'2022-03-03','2022-03-10','2022-03-10'); 
INSERT INTO BOOK_LOANS VALUES(13,3,555555,'2022-02-03','2022-03-03','2022-02-18');
INSERT INTO BOOK_LOANS VALUES(14,1,565656,'2022-01-14','2022-02-14','2022-03-31');
INSERT INTO BOOK_LOANS VALUES(15,3,676767,'2022-01-15','2022-02-15','2022-02-21');
INSERT INTO BOOK_LOANS VALUES(16,2,787878,'2022-03-05','2022-03-12','2022-03-24');
INSERT INTO BOOK_LOANS VALUES(17,3,989898,'2022-03-23','2022-03-30','2022-03-30');
INSERT INTO BOOK_LOANS VALUES(18,3,121212,'2022-01-18','2022-02-18','2022-02-18');
INSERT INTO BOOK_LOANS VALUES(19,1,232323,'2022-03-24','2022-03-31','2022-03-31'); 
INSERT INTO BOOK_LOANS VALUES(20,3,343434,'2022-01-21','2022-02-21','2022-02-21');
INSERT INTO BOOK_LOANS VALUES(21,3,454545,'2022-01-24','2022-02-24','2022-02-24');

CREATE TABLE BOOK_COPIES (
    Book_Id INT NOT NULL,
    Branch_Id INT NOT NULL,
    No_Of_Copies INT NOT NULL,
    PRIMARY KEY(Book_Id, Branch_Id),
    FOREIGN KEY(Book_Id) REFERENCES BOOK(Book_Id),
    FOREIGN KEY(Branch_Id) REFERENCES LIBRARY_BRANCH(Branch_Id)
);

INSERT INTO BOOK_COPIES VALUES(1, 1, 3);
INSERT INTO BOOK_COPIES VALUES(2, 1, 2);
INSERT INTO BOOK_COPIES VALUES(3, 2, 1);
INSERT INTO BOOK_COPIES VALUES(4, 3, 4);
INSERT INTO BOOK_COPIES VALUES(5, 1, 5);
INSERT INTO BOOK_COPIES VALUES(6, 2, 3);
INSERT INTO BOOK_COPIES VALUES(7, 2, 2);
INSERT INTO BOOK_COPIES VALUES(8, 3, 1);
INSERT INTO BOOK_COPIES VALUES(9, 1, 4);
INSERT INTO BOOK_COPIES VALUES(10, 2, 2);
INSERT INTO BOOK_COPIES VALUES(11, 1, 3);
INSERT INTO BOOK_COPIES VALUES(12, 3, 2);
INSERT INTO BOOK_COPIES VALUES(13, 3, 1);
INSERT INTO BOOK_COPIES VALUES(14, 1, 5);
INSERT INTO BOOK_COPIES VALUES(15, 3, 1);
INSERT INTO BOOK_COPIES VALUES(16, 2, 3);
INSERT INTO BOOK_COPIES VALUES(17, 3, 2);
INSERT INTO BOOK_COPIES VALUES(18, 3, 2);
INSERT INTO BOOK_COPIES VALUES(19, 1, 5);
INSERT INTO BOOK_COPIES VALUES(20, 3, 1);
INSERT INTO BOOK_COPIES VALUES(21, 3, 1);

CREATE TABLE BOOK_AUTHORS (
    Book_Id INT NOT NULL,
    Author_Name VARCHAR(25) NOT NULL,
    PRIMARY KEY(Book_Id),
    FOREIGN KEY(Book_Id) REFERENCES BOOK(Book_Id)
);

INSERT INTO BOOK_AUTHORS VALUES(1, 'Harper Lee');
INSERT INTO BOOK_AUTHORS VALUES(2, 'George Orwell');
INSERT INTO BOOK_AUTHORS VALUES(3, 'Jane Austen');
INSERT INTO BOOK_AUTHORS VALUES(4, 'F. Scott Fitzgerald');
INSERT INTO BOOK_AUTHORS VALUES(5, 'Gabriel Garcia Marquez');
INSERT INTO BOOK_AUTHORS VALUES(6, 'George Orwell');
INSERT INTO BOOK_AUTHORS VALUES(7, 'J.D. Salinger');
INSERT INTO BOOK_AUTHORS VALUES(8, 'William Golding');
INSERT INTO BOOK_AUTHORS VALUES(9, 'Aldous Huxley');
INSERT INTO BOOK_AUTHORS VALUES(10, 'Oscar Wilde');
INSERT INTO BOOK_AUTHORS VALUES(11, 'Paulo Coelho');
INSERT INTO BOOK_AUTHORS VALUES(12, 'Arundhati Roy');
INSERT INTO BOOK_AUTHORS VALUES(13, 'Emily Bronte');
INSERT INTO BOOK_AUTHORS VALUES(14, 'J.R.R. Tolkien');
INSERT INTO BOOK_AUTHORS VALUES(15, 'J.R.R. Tolkien');
INSERT INTO BOOK_AUTHORS VALUES(16, 'Douglas Adams');
INSERT INTO BOOK_AUTHORS VALUES(17, 'Anne Frank');
INSERT INTO BOOK_AUTHORS VALUES(18, 'Dan Brown');
INSERT INTO BOOK_AUTHORS VALUES(19, 'Mark Twain');
INSERT INTO BOOK_AUTHORS VALUES(20, 'Mark Twain');
INSERT INTO BOOK_AUTHORS VALUES(21, 'Charles Dickens');

-- Query 1
INSERT INTO BORROWER VALUES(NULL, 'Tien Hoang', '701 S Nedderman Dr, Arlington, TX 76019', '682-407-9912');
-- Query 2
UPDATE BORROWER
SET Phone='837-721-8965'
WHERE Name='Tien Hoang';
-- Query 3
UPDATE BOOK_COPIES
SET No_Of_Copies=No_Of_Copies+1
WHERE Branch_Id=3;
-- Query 4-a
INSERT INTO BOOK VALUES(22, 'Harry Potter and the Sorcerer''s Stone', 'Oxford Publisheing');
INSERT INTO BOOK_AUTHORS VALUES (22, 'J.K. Rowling');
-- Query 4-b
INSERT INTO LIBRARY_BRANCH VALUES(4, 'North Branch', '456 NW, Irving, TX 76100');
INSERT INTO LIBRARY_BRANCH VALUES(5, 'UTA Branch', '123 Cooper St, Arlington TX 76101');
-- Query 5

-- Query 6
SELECT bw.Name
FROM BORROWER AS bw, BOOK_LOANS AS bl
WHERE bw.Card_No=bl.Card_No AND bl.Returned_Date IS NULL;
-- Query 7

-- Query 8

-- Query 9

-- Query 10
SELECT bw.Name, bw.Address
FROM BORROWER AS bw, BOOK_LOANS AS bl, LIBRARY_BRANCH AS lb
WHERE bw.Card_No=bl.Card_No AND bl.Branch_Id=lb.Branch_Id AND lb.Branch_Id=2;
