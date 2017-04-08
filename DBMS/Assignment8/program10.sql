set serveroutput on;

declare
	n number(2) := &n;
	n_price author_006.price%type;
	total_price author_006.price%type :=0;

	cursor t_price is
		select price from author_006;
begin
	open t_price;
	for price in 1..n
	loop
	fetch t_price into n_price;
		total_price := total_price + n_price;
	end loop;
	close t_price;
	dbms_output.put_line('Total = '||total_price);
end;
/
