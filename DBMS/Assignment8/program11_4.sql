CREATE OR REPLACE TRIGGER display_salary_changes 
BEFORE DELETE OR INSERT OR UPDATE ON emp_sal_it_006 
FOR EACH ROW 
WHEN (NEW.ID > 0) 
DECLARE 
   sal_diff number; 
BEGIN 
   sal_diff := :NEW.salary  - :OLD.salary; 
   dbms_output.put_line('Old salary: ' || :OLD.salary); 
   dbms_output.put_line('New salary: ' || :NEW.salary); 
   dbms_output.put_line('Salary difference: ' || sal_diff); 
END;
/*declare

begin
	dbms_output.put_line('Table Updated');
	dbms_output.put_line('Name - '||NEW.name);
	dbms_output.put_line('Age - '|| NEW.age);
	dbms_output.put_line('Address - '||NEW.address);
	dbms_output.put_line('Salary - '||NEW.salary);
end;*/
/ 

