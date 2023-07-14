USE littlelemondb;
CREATE PROCEDURE UpdateBooking(ID INT, BDate DATE)
BEGIN
UPDATE booking SET Date = BDate WHERE BookingID = ID
SELECT CONCAT('Booking ', ID,' updated') AS Confirmation
END;

CALL UpdateBooking(9, '2022-12-17');