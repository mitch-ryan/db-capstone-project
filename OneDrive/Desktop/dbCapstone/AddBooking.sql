DELIMITER //

CREATE PROCEDURE AddBooking(
    IN bookingID INT,
    IN bookingDate DATE,
    IN tableNumber INT,
    IN customerID INT
)
BEGIN
    -- Insert a new record into the bookings table
    INSERT INTO bookings (BookingID, BookingDate, TableNumber, CustomerID)
    VALUES (bookingID, bookingDate, tableNumber,customerID);
END //

DELIMITER ;