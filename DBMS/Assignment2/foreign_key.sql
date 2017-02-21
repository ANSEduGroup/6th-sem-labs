ALTER TABLE room_006
ADD CONSTRAINT hotel_key
FOREIGN KEY (hotel_no) REFERENCES hotel_006(hotel_no);

ALTER TABLE booking_006
ADD CONSTRAINT room_key
FOREIGN KEY (room_no, hotel_no) REFERENCES room_006(room_no, hotel_no);

ALTER TABLE booking_006
ADD CONSTRAINT guest_key
FOREIGN KEY (guest_no) REFERENCES guest_006(guest_no);