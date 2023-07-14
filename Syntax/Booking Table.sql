USE littlelemondb;
CREATE PROCEDURE AddValidBooking(BookingDate DATE, TableNo INT)
BEGIN
START TRANSACTION
IF BookingDate ANY = (SELECT Date FROM bookings) AND TableNo ANY = (SELECT TableNo FROM bookings) THEN ROLLBACK
ELSE INSERT INTO bookings(Date, TableNo) VALUES(BookingDate, TableNo) 
COMMIT;

CALL AddValidBooking("2022-12-17", 6);