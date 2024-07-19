DELIMITER //

CREATE PROCEDURE CheckBooking( IN bookingDate Date, IN tableNumber INT)
BEGIN
	DECLARE tableStatus INT;
    SELECT COUNT(*)
    INTO tableStatus
    FROM bookings
    WHERE BookingDate = bookingDate AND TableNumber = tablenumber;
    
    IF tableStatus > 0 THEN
		SELECT 'This table is booked' AS StatusMesssage;
    ELSE
		SELECT 'This table is available' AS StatusMessage;
	END IF;
END//
DELIMITER ;

call CheckBooking("2022-11-12",3)