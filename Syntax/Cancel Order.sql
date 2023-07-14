USE littlelemondb;
DELIMITTER //
CREATE PROCEDURE CancelOrder(ID)
BEGIN
DELETE FROM orders WHERE OrderID = ID;
SELECT CONCAT('Order ', ID, ' has been cancelled.') AS Confirmation;
END//
DELIMITTER ;
CALL CancelOrder(5);
