USE littlelemondb;
CREATE PROCEDURE AddBooking(BID INT, CID INT, Date DATE, TableNo INT)
BEGIN
INSERT INTO bookings(BookingID, CustomerID, Date, TableNo) VALUES(BID, CID, Date, TableNo)
END;

CALL AddBooking(9, 3, 4, '2022-12-30');
