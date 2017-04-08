CREATE OR REPLACE function insertAuthors(
	   ISBN IN AUTHOR_006.isbn%TYPE,
	   title IN AUTHOR_006.title%TYPE,
	   author_name IN AUTHOR_006.author_name%TYPE,
	   pub_id IN AUTHOR_006.pub_id%TYPE,
	   category IN AUTHOR_006.category%TYPE,
	   year IN AUTHOR_006.year%TYPE,
	   price IN AUTHOR_006.price%TYPE) return number
IS
  total number;
BEGIN

  INSERT INTO AUTHOR_006 
  --("isbn","title","author_name","pub_id","category", "year", "price")
  VALUES (isbn, title, author_name, pub_id, category, year, price);

  COMMIT;

END;
-- begining of the execution part
BEGIN
	dbms_output.put_line(/*enter the sql command here*/);
	dbms_output.put_line(/*enter the sql command here*/);
END;
/

