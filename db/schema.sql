DROP DATABASE IF EXISTS travel_db;
CREATE DATABASE travel_db;
USE travel_db;
CREATE TABLE locations(
    id INT NOT NULL AUTO_INCREMENT,
    location_name VARCHAR(30),
    PRIMARY KEY(id)
);
CREATE TABLE traveller(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30),
    email VARCHAR(30),
    PRIMARY KEY(id)
);
CREATE TABLE trip(
    id INT NOT NULL AUTO_INCREMENT,
    trip_budget INT NOT NULL,
    traveller_amount INT NOT NULL,
    traveller_id INT,
    location_id INT,
    FOREIGN KEY (traveller_id) REFERENCES traveller(id) ON DELETE
    SET NULL,
        FOREIGN KEY (location_id) REFERENCES locations(id) ON DELETE
    SET NULL,
        PRIMARY KEY(id)
);