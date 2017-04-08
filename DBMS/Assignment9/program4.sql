DECLARE 
   a number := &a; 
PROCEDURE squareNum(x IN OUT number) IS 
BEGIN 
  x := x * x; 
END;  
BEGIN 
   squareNum(a); 
   dbms_output.put_line(' Square = ' || a); 
END; 
/

