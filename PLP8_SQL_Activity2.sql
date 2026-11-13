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