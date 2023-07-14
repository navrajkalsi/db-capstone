USE littlelemondb;
SELECT Cuisines FROM menu
WHERE MenuID = ANY (SELECT MenuID FROM orders WHERE Quantity > 2);
