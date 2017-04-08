DECLARE  
   total_rows number(2); 
BEGIN 
   UPDATE emp_sal_it_006 
   SET salary = salary + 500; 
   IF sql%notfound THEN 
      dbms_output.put_line('no employees update'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' employees got a raise'); 
   END IF;  
END; 
/

