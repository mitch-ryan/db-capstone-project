PREPARE GetOrderDetail FROM
'SELECT OrderID, Quantity, TotalCost
FROM orders
WHERE CustomerID= ?';

SET @id =1;

EXECUTE GetOrderDetail USING @id;