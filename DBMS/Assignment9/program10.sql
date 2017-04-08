create or replace PROCEDURE delete_author_info
AS
BEGIN
   FOR aRow IN (SELECT * FROM author_006 WHERE pub_id = 'P3')
   LOOP
     delete author_006;
   END LOOP;
END delete_author_info;
/

