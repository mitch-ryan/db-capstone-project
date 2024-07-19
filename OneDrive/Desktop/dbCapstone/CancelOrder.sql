DELIMITER //
CREATE PROCEDURE CancelOrder(IN orderID INT)
BEGIN
	
    SELECT * FROM orders
    WHERE OrderID= orderID;
END//

DELIMITER ;



call CancelOrder(5);



		