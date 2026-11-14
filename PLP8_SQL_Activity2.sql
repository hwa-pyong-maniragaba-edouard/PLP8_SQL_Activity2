CREATE DATABASE airline_db
    DEFAULT CHARACTER SET = 'utf8mb4';

USE airline_db;

CREATE TABLE passengers (
    passenger_id     INT PRIMARY KEY AUTO_INCREMENT,
    name             VARCHAR(100) NOT NULL,
    current_location VARCHAR(100),
    destination      VARCHAR(100),
    travel_date      VARCHAR(20)
);

USE airline_db;

CREATE TABLE bookings (
    booking_id        INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id      INT NOT NULL,
    class_tier        VARCHAR(10) NOT NULL
                      CHECK (class_tier IN ('Economy', 'Business', 'First')),
    seat_preference   VARCHAR(50),
    lounge_pass_code  VARCHAR(50),
    suite_number      VARCHAR(20),
    chauffeur_service BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (passenger_id)
        REFERENCES passengers(passenger_id)
        ON DELETE CASCADE
);

insert into passengers (name, current_location, destination, travel_date) values
('Riah', 'Kigali', 'Lagos', '2024-07-15'),
('Neema', 'Kigali', 'Nairobi', '2024-08-20'),
('Bill', 'Kigali', 'South Africa', '2024-09-10');

select * from passengers;


insert into bookings (booking_id, passenger_id, class_tier, seat_preference, lounge_pass_code, suite_number, chauffeur_service) values
(1, 1, 'Economy', 'Window', NULL, NULL, FALSE),
(2, 2, 'Business', 'Aisle', 'LP12345', NULL, TRUE),
(3, 3, 'First', NULL, 'LP67890', 'S101', TRUE);

select * from bookings;


 
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