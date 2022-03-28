--  Othniel Tiendrbeogo,300084968
-- excercice 1 
CREATE TABLE  BOOK (
bookid integer ,
bookname varchar(20),
authordid integer,
amount Numeric (7,2),
rating integer,
booktype varchar (25),
CONSTRAINT book_key PRIMARY KEY (bookid),
CONSTRAINT reference_key FOREIGN KEY (authordid)  REFERENCES AUTHOR
ON UPDATE CASCADE ON DELETE CASCADE,
CONSTRAINT rate CHECK ( rating  BETWEEN 1 AND 10  ),-- rating between 1 and 10
CONSTRAINT check_price CHECK ( amount > 0 ),
CONSTRAINT book CHECK ( booktype  in ("Fiction-adulte", "Non-fiction-adulte", 
"Fiction-jeunesse","Non-Fiction-jeunesse"))
);

-- exercice 2 

CREATE TABLE   AUTHOR (

authorname  VARCHAR (20),
);
CREATE ASSERTION smallClub CHECK 
 ( (SELECT COUNT(*) FROM BOOK B ) + (SELECT COUNT(*) FROM AUTHOR A)  <= 10000

);


 -- excercice 3 

 CREATE TRIGGER check_book 
 BEFORE UPDATE  ON BOOK
 FOR EACH ROW
 EXCECUTE PROCEDURE check_book_rating() ;


 -- exercice 4  
  
  -- i
  ALTER TABLE  AUTHOR 
  ADD author_sum_rating INTEGER 
  CONSTRAINT sum_rating DEFAULT (0)

  --ii
-- let fucn cal_sum () return the total of all rate of one author

CREATE  TRIGGER  total_rate 
AFTER  UPDATE OF rating ON BOOK
FOR EACH ROW 
WHEN (NEW.rating  > 0 )

EXECUTE PROCEDURE cal_sum () ;








 













