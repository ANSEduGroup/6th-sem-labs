DECLARE 
   num number := &num; 
   factorial number;  
   
FUNCTION fact(x number) 
RETURN number  
IS 
   f number; 
BEGIN 
   IF x=0 THEN 
      f := 1; 
   ELSE 
      f := x * fact(x-1); 
   END IF; 
RETURN f; 
END;  

BEGIN 
   factorial := fact(num); 
   dbms_output.put_line(' Factorial '|| num || ' is ' || factorial); 
END; 
/

