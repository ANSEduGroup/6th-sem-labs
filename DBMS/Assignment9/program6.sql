create or replace PROCEDURE get_author_info_by_pub_id
AS
BEGIN
   -- This cursor will return
   --   - a single row if p_employee_id is specified and exists in the table
   --   - all rows in the table if p_employee_id is NULL (default value, or
   --     passed in as NULL)
   --   - all rows in the table if p_employee_id is specified but does not
   --     exist in the table

   FOR aRow IN (SELECT isbn, author_name, category, pub_id, title, year, price 
   				FROM author_006 WHERE pub_id = 'P3')
   LOOP
     DBMS_OUTPUT.PUT_LINE('ISBN: ' || aRow.ISBN);
     DBMS_OUTPUT.PUT_LINE('Author Name: ' || aRow.author_name);
     DBMS_OUTPUT.PUT_LINE('Category: ' || aRow.category);
     DBMS_OUTPUT.PUT_LINE('Book Title: ' || aRow.title);
     DBMS_OUTPUT.PUT_LINE('Year: ' || aRow.year);
     DBMS_OUTPUT.PUT_LINE('Price: ' || aRow.price);
   END LOOP;
END get_author_info_by_pub_id;
/

