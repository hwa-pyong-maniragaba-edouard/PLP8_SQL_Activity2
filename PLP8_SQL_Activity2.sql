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
