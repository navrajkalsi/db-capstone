USE littlelemondb;
DELIMITTER  //
CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(Quantity) AS MaxQuantity FROM orders;
END//
DELIMITTER ;
CALL GetMaxQuantity();
