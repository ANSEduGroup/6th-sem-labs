INSERT INTO booking_006 (room_no, hotel_no, guest_no, date_from, date_to)
	SELECT 'R1','H1', 'G1', '01-JAN-2016','08-JAN-2016' FROM dual UNION ALL 
	SELECT 'R2', 'H1', 'G2', '12-JAN-2016', '18-JAN-2016' FROM dual UNION ALL 
	SELECT 'R1','H2', 'G3', '01-JAN-2016', '08-JAN-2016' FROM dual UNION ALL 
	SELECT 'R2', 'H2', 'G4', '18-JAN-2016', '28-JAN-2016' FROM dual UNION ALL 
	SELECT 'R3','H4', 'G5', '10-JAN-2016', '18-JAN-2016' FROM dual UNION ALL 
	SELECT 'R4', 'H5', 'G6', '11-JAN-2016', '18-JAN-2016' FROM dual UNION ALL 
	SELECT 'R2','H3', 'G7', '21-JAN-2016', '28-JAN-2016' FROM dual UNION ALL 
	SELECT 'R1','H6', 'G8', '12-JAN-2016', '20-JAN-2016' FROM dual UNION ALL 
	SELECT 'R2','H6', 'G9', '21-JAN-2016', '28-JAN-2017' FROM dual;
