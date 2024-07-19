DELIMITER //

CREATE PROCEDURE CancelBooking(
    IN bookingID INT
)
BEGIN
    DELETE FROM bookings
    WHERE BookingID = bookingID;
    SELECT CONCAT('Booking with ID ', bookingID, ' has been canceled.') AS StatusMessage;
END //

DELIMITER ;
