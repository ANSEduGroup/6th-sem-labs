CREATE OR REPLACE FUNCTION updateAuthors return number is
total number(2) :=0;
BEGIN 
   update author_006
   set price = price * 1.05;

   select count(*) into total
   from author_006;
   return total;
END; 
/ 

DECLARE 
   c number(2);
BEGIN 
   c := updateAuthors(); 
   dbms_output.put_line('Author table updated'); 
END; 
/

