DECLARE 
   c_id emp_sal_it_006.id%type; 
   c_name emp_sal_it_006.name%type; 
   c_addr emp_sal_it_006.address%type; 
   CURSOR c_emp_sal_it_006 is 
      SELECT id, name, address FROM emp_sal_it_006; 
BEGIN 
   OPEN c_emp_sal_it_006; 
   LOOP 
   FETCH c_emp_sal_it_006 into c_id, c_name, c_addr; 
      EXIT WHEN c_emp_sal_it_006%notfound; 
      dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr); 
   END LOOP; 
   CLOSE c_emp_sal_it_006; 
END; 
/

