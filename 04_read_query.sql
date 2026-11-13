-- Member 4: READ
-- Select all passengers booked in Business or First Class

USE airline_db;

SELECT
    p.passenger_id,
    p.name,
    p.current_location,
    p.destination,
    p.travel_date,
    b.booking_id,
    b.class_tier
FROM passengers p
INNER JOIN bookings b
    ON p.passenger_id = b.passenger_id
WHERE b.class_tier IN ('Business', 'First')
ORDER BY b.class_tier, p.name;