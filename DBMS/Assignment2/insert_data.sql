# Insert into hotel

INSERT INTO hotel (hotel_no, name, address) VALUES
  ('H1','GRAND', 'KOLKATA'),
  ('H2', 'TAJ', 'MUMBAI'),
  ('H3', 'PURI', 'PURI'),
  ('H4', 'ITC', 'KOLKATA'),
  ('H5', 'PARK', 'CHENNAI');

# Insert into room

INSERT INTO room (room_no, hotel_no, type, price) VALUES
  ('R1','H1', 'AC', '2000'),
  ('R2', 'H1', 'NONAC','1000'),
  ('R1','H2', 'DELUX', '2500'),
  ('R2', 'H2', 'NONAC','1000'),
  ('R3','H4', 'AC', '1800'),
  ('R4', 'H5', 'DELUX','3000'),
  ('R2','H3', 'AC', '2900');

# Insert into booking

INSERT INTO booking (room_no, hotel_no, guest_no, date_from, date_to) VALUES
  ('R1','H1', 'G1', '2013-01-01','2013-01-08'),
  ('R2', 'H1', 'G2', '2013-01-12', '2013-01-18'),
  ('R1','H2', 'G3', '2013-01-01', '2013-01-08'),
  ('R2', 'H2', 'G4', '2013-01-18', '2013-01-28'),
  ('R3','H4', 'G5', '2013-01-10', '2013-01-18'),
  ('R4', 'H5', 'G6', '2013-01-11', '2013-01-18'),
  ('R2','H3', 'G7', '2013-01-21', '2013-01-28');

# Insert into guest

INSERT INTO guest (guest_no, name, address) VALUES
  ('G1', 'RAM', 'MUMBAI'),
  ('G2', 'SHYAM', 'KOLKATA'),
  ('G3', 'JADU', 'KOLKATA'),
  ('G4', 'MADHU', 'KOLKATA'),
  ('G5', 'SMITH', 'CHENNAI'),
  ('G6', 'JONES', 'CHENNAI'),
  ('G7', 'RIMI', 'KOLKATA');