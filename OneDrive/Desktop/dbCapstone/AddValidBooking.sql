DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN bookingDate DATE,
    IN tableNumber INT
)
BEGIN
    DECLARE existingBookings INT;

    START TRANSACTION;
    SELECT COUNT(*)
    INTO existingBookings
    FROM bookings
    WHERE BookingDate = bookingDate AND TableNumber = tableNumber;

    
    IF existingBookings > 0 THEN
        ROLLBACK;
        SELECT 'Table is already booked- booking cancelled.' AS StatusMessage;
    ELSE
        INSERT INTO bookings (BookingDate, TableNumber, CustomerID)
        VALUES (bookingDate, tableNumber, NULL); 

        COMMIT;
        SELECT 'Booking successful: Table is now reserved.' AS StatusMessage;
    END IF;
END //

DELIMITER ;

CALL AddValidBooking("2022-12-17", 6);

