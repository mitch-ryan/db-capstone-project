DELIMITER //

CREATE PROCEDURE UpdateBooking(
    IN bookingID INT,
    IN newBookingDate DATE
)
BEGIN
    UPDATE bookings
    SET BookingDate = newBookingDate
    WHERE BookingID = bookingID;
END //

DELIMITER ;