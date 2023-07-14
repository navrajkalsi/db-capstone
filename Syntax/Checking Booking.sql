USE littlelemondb;
CREATE PROCEDURE CheckBooking(BookingDate DATE, TableNo INT)
BEGIN
CASE
WHEN BookingDate = ANY(SELECT Date FROM bookings) THEN SELECT CONCAT('Table ', TableNo, ' is already booked')
ELSE SELECT CONCAT('Table ', TableNo, ' is avaliable')
END AS BookingStatus;

CALL CheckBooking('2022-11-12', 3);
