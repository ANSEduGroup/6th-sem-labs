set serveroutput on;

declare
a number(4) := &a;
b number(4) := &b;
c number(4) := &c;
begin
		if (a>b and a>c) then
				dbms_output.put_line('A is greater than B and C');
		elsif (b>a and b>c) then	
				dbms_output.put_line('B is greater than A and C');
		else
				dbms_output.put_line('C is greater than A and B');
		end if;
end;
/
