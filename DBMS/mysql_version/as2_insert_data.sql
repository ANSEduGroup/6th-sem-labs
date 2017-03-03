# Setting the foreign keys
ALTER TABLE room_006
ADD CONSTRAINT hotel_key
FOREIGN KEY (hotel_no) REFERENCES hotel_006(hotel_no);

ALTER TABLE booking_006
ADD CONSTRAINT room_key
FOREIGN KEY (room_no, hotel_no) REFERENCES room_006(room_no, hotel_no);

ALTER TABLE booking_006
ADD CONSTRAINT guest_key
FOREIGN KEY (guest_no) REFERENCES guest_006(guest_no);


# Insert into hotel

INSERT INTO hotel_006 (hotel_no, name, address) VALUES
   ('H1', 'PURI', 'PURI'), 
   ('H2','TAJ', 'MUMBAI'), 
   ('H3', 'SONALI', 'PURI'), 
   ('H4', 'ITC', 'KOLKATA'), 
   ('H5', 'PARK', 'CHENNAI'), 
   ('H6', 'SAMUDRA', 'CHENNAI');

# Insert into room

INSERT INTO room_006 (room_no, hotel_no, type, price) VALUES
   ('R1', 'H1', 'AC', '2000'),
   ('R2', 'H1', 'NONAC', '1000'),
   ('R1', 'H2', 'DELUX', '2500'),
   ('R2', 'H2', 'NONAC', '1000'),
   ('R2', 'H3', 'AC', '3900'),
   ('R3', 'H4', 'AC', '1800'),
   ('R4', 'H5', 'DELUX', '4000'),
   ('R1', 'H6', 'AC', '4000'),
   ('R2', 'H6', 'NONAC', '1500');

# Insert into guest

INSERT INTO guest_006 (guest_no, name, address) VALUES 
   ('G1', 'RAJA', 'MUMBAI'),
   ('G2', 'SIMA', 'KOLKATA'), 
   ('G3', 'RAHUL', 'KOLKATA'), 
   ('G4', 'MILI', 'KOLKATA'),
   ('G5', 'SMITH', 'CHENNAI'),
   ('G6', 'JONES', 'CHENNAI'), 
   ('G7', 'RIMI', 'KOLKATA'),
   ('G8', 'REKHA', 'CHENNAI'), 
   ('G9', 'RISHI', 'PURI');

# Insert into booking

INSERT INTO booking_006 (room_no, hotel_no, guest_no, date_from, date_to) VALUES
  ('R1','H1', 'G1', '2016-01-01','2016-01-08'),
  ('R2', 'H1', 'G2', '2016-01-12', '2016-01-18'),
  ('R1','H2', 'G3', '2016-01-01', '2016-01-08'),
  ('R2', 'H2', 'G4', '2016-01-18', '2016-01-28'),
  ('R3','H4', 'G5', '2016-01-10', '2016-01-18'),
  ('R4', 'H5', 'G6', '2016-01-11', '2016-01-18'),
  ('R2','H3', 'G7', '2016-01-21', '2016-01-28'),
  ('R1', 'H6', 'G8', '2016-01-12', '2016-01-20'),
  ('R2', 'H6', 'G9', '2016-01-21', '2017-01-28');

