CREATE OR REPLACE FUNCTION totalRecords 
RETURN number IS 
   total number(2) := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM emp_sal_it_006; 
    
   RETURN total; 
END; 
/

DECLARE 
   c number(2); 
BEGIN 
   c := totalRecords(); 
   dbms_output.put_line('Total no. of Employees: ' || c); 
END; 
/


