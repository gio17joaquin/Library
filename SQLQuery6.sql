USE db_book

/*Books Table */

CREATE TABLE tbl_Book (
		book_id INT PRIMARY KEY,
		book_title VARCHAR(50) NOT NULL,
		book_publishername VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_Book
	(book_id, book_title, book_publishername)
	VALUES 
	('1', 'The Lost Tribe', 'Weekly'),
	('2', 'Good Life', 'Pinguin'),
	('3', 'Deschutes', 'Simon & Schuster'),
	('4', 'Send', 'Random House of Canada'),
	('5', 'Koffmann', 'Pinguin'),
	('6', 'Biking', 'Simon & Schuster'),
	('7', 'End of Watch', 'Pinguin'),
	('8', 'Soccer', 'Random House of Canada'),
	('9', 'Life of Pi', 'Random House of Canada'),
	('10', 'Barcelona', 'Weekly'),
	('11', 'Rebel of the Sand', 'Weekly'),
	('12', 'Gordo', 'Pinguin'),
	('13', 'Eileen', 'Random House of Canada'),
	('14', 'Moving', 'Simon & Schuster'),
	('15', 'Fishing', 'Simon & Schuster'),
	('16', 'Flash FIre', 'Weekly'),
	('17', 'Boneyard', 'Weekly'),
	('18', 'Milk Made', 'Hachette'),
	('19', 'Apollo', 'Hachette Book'),
	('20', 'Space', 'Hachette')
	;

SELECT * FROM tbl_Book

/* END BOOK TABLE*/


/* BOOK AUTHORS*/


CREATE TABLE tbl_Bookauthor (
		aurthur_bookid INT PRIMARY KEY,
		aurthur_name VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_Bookauthor
	(aurthur_bookid, aurthur_name)
	VALUES
	('1', 'Stephen King'),
	('2', 'Juan Mata'),
	('3', 'Raul Jimenez'),
	('4', 'Rafa Marquez'),
	('5', 'Alberto James'),
	('6', 'Cody Smith'),
	('7', 'Bruce Brown'),
	('8', 'Pete Parker'),
	('9', 'Dan Johnson'),
	('10', 'Morgan Stanley'),
	('11', 'Michael Scott'),
	('12', 'Dylan Jones'),
	('13', 'Allen Tylor'),
	('14', 'Sue Miller'),
	('15', 'Adres Perez'),
	('16', 'Jacob Gibbson'),
	('17', 'Debbie WIlliams'),
	('18', 'Alex Moore'),
	('19', 'Mark Jackson'),
	('20', 'Jennifer Garcia')
;

SELECT * FROM tbl_Bookauthor

/* END BOOK AUTHORS*/


/*BOOK PUBLISHERS*/

CREATE TABLE tbl_Publisher (
		publisher_name VARCHAR (50) PRIMARY KEY,
		publisher_address VARCHAR(50) NULL,
		publisher_phone VARCHAR(50) NULL
	);

INSERT INTO tbl_Publisher
	(publisher_name, publisher_address, publisher_phone)
	VALUES
	('Red', '12 S Elm St Madras, OR 82732', '511-222-3333'),
	('Simon & Schuster', '1202 SW Evergreen Ave Madras, OR 82732','511-567-1234'),
	('Random House of Canada', '76784 Chivas St La Pine, OR 28981', '511-321-7823'),
	('Pinguin', '117 Soccer St La Pine, OR 28981', '435-722-1730'),
	('Hachette Book', '555 SW Shevlin Scranton, PA 45392', '345-221-6342')
;

SELECT * FROM tbl_Publisher


/*END BOOK PUBLISHERS*/


/*BOOK LOANS*/

CREATE TABLE tbl_Bookloans (
		loans_bookid INT NOT NULL,
		loans_branchid INT NOT NULL,
		loans_cardno INT NOT NULL,
		loans_dateout VARCHAR(50) NOT NULL,
		loans_duedate VARCHAR(50) NOT NULL
		CONSTRAINT pk_Bookloans PRIMARY KEY (loans_bookid, loans_branchid, loans_cardno)
	);

INSERT INTO tbl_Bookloans
	(loans_bookid, loans_branchid, loans_cardno, loans_dateout, loans_duedate)
	VALUES
	('2', '1', '12345', '7-16-2017', '7-23-2017'),
	('4', '1', '12345', '7-16-2017', '7-23-2017'),
	('6', '1', '12345', '7-16-2017', '7-20-2017'),
	('8', '1', '12345', '7-16-2017', '7-23-2017'),
	('10', '1', '12345', '7-16-2017', '7-23-2017'),
	('12', '1', '12345', '7-16-2017', '7-23-2017'),
	('14', '3', '26192', '7-14-2017', '7-21-2017'),
	('16', '3', '26192', '7-14-2017', '7-21-2017'),
	('18', '3', '26192', '7-14-2017', '7-21-2017'),
	('20', '3', '26192', '7-14-2017', '7-20-2017'),
	('1', '3', '26192', '7-14-2017', '7-21-2017'),
	('3', '3', '26192', '7-14-2017', '7-20-2017'),
	('5', '2', '35781', '7-15-2017', '7-22-2017'),
	('7', '2', '35781', '7-15-2017', '7-22-2017'),
	('9', '4', '87399', '7-16-2017', '7-23-2017'),
	('11', '4', '87399', '7-16-2017', '7-20-2017'),
	('13', '5', '38293', '7-16-2017', '7-23-2017'),
	('15', '5', '38293', '7-16-2017', '7-23-2017'),
	('17', '5', '38293', '7-16-2017', '7-20-2017'),
	('19', '5', '38293', '7-16-2017', '7-20-2017'),
	('10', '1', '65432', '7-16-2017', '7-23-2017'),
	('12', '1', '65432', '7-16-2017', '7-23-2017'),
	('14', '1', '65432', '7-14-2017', '7-21-2017'),
	('16', '3', '77221', '7-14-2017', '7-21-2017'),
	('18', '3', '77221', '7-14-2017', '7-21-2017'),
	('20', '3', '77221', '7-14-2017', '7-21-2017'),
	('1', '3', '77221', '7-14-2017', '7-21-2017'),
	('3', '3', '77221', '7-14-2017', '7-21-2017'),
	('5', '2', '81976', '7-15-2017', '7-20-2017'),
	('7', '2', '81976', '7-15-2017', '7-20-2017'),
	('10', '2', '81976', '7-16-2017', '7-23-2017'),
	('11', '2', '81976', '7-16-2017', '7-23-2017'),
	('8', '2', '81976', '7-15-2017', '7-20-2017'),
	('9', '2', '81976', '7-16-2017', '7-20-2017'),
	('12', '4', '87399', '7-16-2017', '7-23-2017'),
	('13', '1', '92349', '7-16-2017', '7-23-2017'),
	('15', '1', '92349', '7-16-2017', '7-23-2017'),
	('17', '1', '92349', '7-16-2017', '7-23-2017'),
	('19', '1', '92349', '7-16-2017', '7-23-2017'),
	('10', '1', '92349', '7-16-2017', '7-23-2017'),
	('12', '1', '92349', '7-16-2017', '7-23-2017'),
	('14', '3', '10984', '7-14-2017', '7-21-2017'),
	('16', '3', '10984', '7-14-2017', '7-21-2017'),
	('18', '3', '10984', '7-14-2017', '7-21-2017'),
	('20', '3', '10984', '7-14-2017', '7-21-2017'),
	('1', '3', '10984', '7-14-2017', '7-21-2017'),
	('3', '3', '10984', '7-14-2017', '7-21-2017'),
	('5', '4', '11223', '7-15-2017', '7-22-2017'),
	('7', '4', '11223', '7-15-2017', '7-22-2017'),
	('9', '4', '11223', '7-16-2017', '7-23-2017')
	;

SELECT * FROM tbl_Bookloans


/*END BOOK LOANS*/


/*BOOK COPIES*/

CREATE TABLE tbl_Bookcopies (
		copies_bookid INT,
		copies_branchid INT NOT NULL,
		copies_noofcopies VARCHAR NULL
		CONSTRAINT pk_Bookcopies PRIMARY KEY (copies_bookid, copies_branchid)
	);

INSERT INTO tbl_Bookcopies
	(copies_bookid, copies_branchid, copies_noofcopies)
	VALUES
	('1', '1', '3'),
	('3', '1', '3'),
	('5', '1', '3'),
	('7', '1', '3'),
	('9', '1', '3'),
	('11', '1', '3'),
	('13', '1', '5'),
	('15', '1', '2'),
	('17', '1', '4'),
	('19', '1', '4'),
	('2', '2', '2'),
	('4', '2', '2'),
	('6', '2', '2'),
	('8', '2', '3'),
	('1', '2', '3'),
	('3', '2', '3'),
	('5', '2', '3'),
	('7', '2', '3'),
	('9', '2', '3'),
	('11', '2', '3'),
	('13', '3', '5'),
	('15', '3', '2'),
	('17', '3', '4'),
	('19', '3', '4'),
	('1', '3', '3'),
	('2', '3', '2'),
	('4', '3', '2'),
	('6', '3', '2'),
	('8', '3', '3'),
	('10', '3', '4'),
	('12', '3', '4'),
	('1', '4', '4'),
	('3', '4', '5'),
	('5', '4', '5'),
	('7', '4', '3'),
	('9', '4', '3'),
	('11', '4', '3'),
	('13', '4', '5'),
	('15', '4', '2'),
	('17', '4', '4'),
	('19', '4', '4'),
	('2', '5', '5'),
	('4', '5', '5'),
	('6', '5', '5'),
	('8', '5', '5'),
	('1', '5', '2'),
	('3', '5', '2'),
	('5', '5', '2'),
	('7', '5', '2'),
	('9', '5', '3'),
	('11', '5', '3')
	;

SELECT * FROM tbl_Bookcopies


/*END BOOK COPIES*/


/*BORROWERS*/


CREATE TABLE tbl_Borrower (
		borrower_cardno INT PRIMARY KEY NOT NULL,
		borrower_name VARCHAR(50) NOT NULL,
		borrower_address VARCHAR(50) NOT NULL,
		borrower_phone VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_Borrower
	(borrower_cardno, borrower_name, borrower_address, borrower_phone)
	VALUES
	('99999', 'Joe Brown', '234 W 48th St Bend, OR 97702', '777-777-7777'),
	('12345', 'John Smith', '333 2nd St Bend, OR 97702', '444-222-3333'),
	('26192', 'Carol Jones', '799 Harrison ST Redmond, OR 97756', '231-857-9382'),
	('35781', 'Christopher Muller', '223 Jackson St Portland, OR 97203', '536-849-1236'),
	('87399', 'Roberto Carlos', '556 6th St Prineville, OR 34214', '675-822-3218'),
	('38293', 'Kevin Allen', '884 California St Redmond, OR 97756', '243-857-4892'),
	('65432', 'Ramon Silvester', '405 Holms Ave Bend, OR 97702', '284-890-3432'),
	('77221', 'Frank Walker', '622 Hemlock St Redmond, OR 97756', '547-325-2495'),
	('81976', 'Bret Scott', '992 18th St Portland, OR 97203', '537-452-5356'),
	('92349', 'Eric Cortez', '294 Columbia St Bend, OR 97702', '302-421-9040'),
	('10984', 'Andres Garza', '890 Canal St Redmond, OR 97756', '826-478-3322'),
	('11223', 'Jaime Sanchez', '111 2nd St Prineville, OR 34214', '683-321-1111')
	;

SELECT * FROM tbl_Borrower

/*END BORROWERS*/


/*LIBRARY BRANCH*/


CREATE TABLE tbl_Librarybranch (
		branch_branchid VARCHAR (50) PRIMARY KEY,
		branch_branchname VARCHAR(50) NOT NULL,
		branch_address VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_Librarybranch
	(branch_branchid, branch_branchname, branch_address)
	VALUES
	('1', 'Central', '1771 Jefferson St Bend, OR 97702'),
	('2', 'Sharpstown', '4732 Couch St Portland, OR 97203'),
	('3', 'Lincoln', '2932 17th St Redmond, OR 97756'),
	('4', 'Deschutes', '9921 Main St Prineville, OR 34214'),
	('5', 'Mazama', '3812 Salmon Ave Redmond, OR 97756')
	;

SELECT * FROM tbl_Librarybranch


/*END LIBRARY BRANCH*/


/*DRILL 1 */
SELECT A.book_title AS 'Title', B.copies_noofcopies AS 'Copies', C.branch_branchname AS 'Branch'
FROM tbl_Book AS a
INNER JOIN tbl_Bookcopies b ON a.book_id = b.copies_bookid
INNER JOIN tbl_Librarybranch c ON b.copies_branchid = c.branch_branchid
WHERE a.book_title = 'The Lost Tribe' AND c.branch_branchname = 'Sharpstown'
/* END DRILL 1 */

/*DRILL 2 */
SELECT A.book_title AS 'Title', B.copies_noofcopies AS 'Copies', C.branch_branchname AS 'Branch'
FROM tbl_Book AS a
INNER JOIN tbl_Bookcopies b ON a.book_id = b.copies_bookid
INNER JOIN tbl_Librarybranch c ON b.copies_branchid = c.branch_branchid
WHERE a.book_title = 'The Lost Tribe'
/*END DRILL 2*/

/*DRILL 3*/
SELECT * FROM tbl_Borrower AS BR 
FULL OUTER JOIN tbl_Bookloans BL ON BR.borrower_cardno = BL.loans_cardno
WHERE BL.loans_cardno IS NULL
/*END DRILL 3*/

/*DRILL 4*/
SELECT A.book_title AS 'Title', C.borrower_name AS 'Name', C.borrower_address AS 'Address'
FROM tbl_Bookloans AS B
INNER JOIN tbl_Borrower C ON B.loans_cardno = C.borrower_cardno
INNER JOIN tbl_Book A ON B.loans_bookid = A.book_id
WHERE B.loans_branchid = 2 AND B.loans_duedate = '7-20-2017'
/*END DRILL 4*/

/*DRILL 5*/
SELECT DISTINCT B.branch_branchname AS 'Branch', COUNT(L.loans_branchid) AS Quantity
FROM tbl_Librarybranch B
INNER JOIN tbl_Bookloans L ON B.branch_branchid = L.loans_branchid
GROUP BY B.branch_branchname, L.loans_branchid
/*END DRILL 5*/

/*DRILL 6*/

SELECT B.borrower_name AS 'Borrower', B.borrower_address AS 'Address', COUNT(L.loans_cardno) AS Quantity
FROM tbl_Borrower B
INNER JOIN tbl_Bookloans L ON B.borrower_cardno = L.loans_cardno
GROUP BY B.borrower_name, B.borrower_address
HAVING COUNT(L.loans_cardno) > 5; 

/*END DRILL 6*/

/*DRILL 7*/



/*END DRILL 7*/