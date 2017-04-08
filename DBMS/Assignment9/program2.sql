set serveroutput on;

DECLARE 
   a number := &a; 
   b number := &b; 
   c number;
PROCEDURE findMin(x IN number, y IN number, z OUT number) IS 
BEGIN 
   IF x < y THEN 
      z:= x; 
   ELSE 
      z:= y; 
   END IF; 
END;   
BEGIN 
   findMin(a, b, c); 
   dbms_output.put_line(' Minimum is = '||c); 
END; 
/

