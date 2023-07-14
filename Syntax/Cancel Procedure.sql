USE littlelemondb;
CREATE PROCEDURE CancelBooking(ID INT)
BEGIN
DELETE FROM bookings WHERE BookingID = ID
SELECT CONCAT('Booking ', ID, ' cancelled') AS Confirmation
END;

CALL CancelBooking(9);