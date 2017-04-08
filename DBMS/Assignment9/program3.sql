set serveroutput on;

DECLARE 
   a number := &a; 
   b number := &b; 
   c number;
PROCEDURE findMax(x IN number, y IN number, z OUT number) IS 
BEGIN 
   IF x > y THEN 
      z:= x; 
   ELSE 
      z:= y; 
   END IF; 
END;   
BEGIN 
   findMax(a, b, c); 
   dbms_output.put_line('Maximum is = '||c); 
END; 
/

