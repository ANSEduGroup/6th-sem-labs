set serveroutput on;

declare
	a number := &a;
	b number := &b;
	c number;
begin
	c := a + b;
	dbms_output.put_line('Output = '||to_char(c));
end;
/
