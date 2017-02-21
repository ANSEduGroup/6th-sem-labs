INSERT INTO room_006 (room_no, hotel_no, type, price)
	 SELECT 'R1', 'H1', 'AC', '2000' FROM dual UNION ALL 
	 SELECT 'R2', 'H1', 'NONAC', '1000' FROM dual UNION ALL 
	 SELECT 'R1', 'H2', 'DELUX', '2500' FROM dual UNION ALL 
	 SELECT 'R2', 'H2', 'NONAC', '1000' FROM dual UNION ALL 
	 SELECT 'R2', 'H3', 'AC', '3900' FROM dual UNION ALL 
	 SELECT 'R3', 'H4', 'AC', '1800' FROM dual UNION ALL 
	 SELECT 'R4', 'H5', 'DELUX', '4000' FROM dual UNION ALL 
	 SELECT 'R1', 'H6', 'AC', '4000' FROM dual UNION ALL 
	 SELECT 'R2', 'H6', 'NONAC', '1500' FROM dual;
