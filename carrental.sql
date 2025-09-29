DROP DATABASE IF EXISTS Carrental;
CREATE DATABASE IF NOT EXISTS Carrental
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;
USE Carrental;

CREATE TABLE Cars(
    car_id INT AUTO_INCREMENT PRIMARY KEY, -- Egyedi azonosító az autókhoz

);

<<<<<<< Updated upstream
<<<<<<< Updated upstream
CREATE TABLE motorcycles(
    bike_id INT AUTO_INCREMENT PRIMARY KEY,
    license_plate CHAR(6),
    brand VARCHAR(50),
    model VARCHAR(50),
    cw ENUM("RED","BLUE","WHITE","BLACK","GRAY","YELLOW","GREEN","SILVER","GOLD","PURPLE",),
    engine
=======
CREATE TABLE Motorcycles(
>>>>>>> Stashed changes
=======
CREATE TABLE Motorcycles(
>>>>>>> Stashed changes

)

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT, -- Egyedi azonosító az ügyfélhez
    first_name VARCHAR(50) NOT NULL, -- Ügyfél keresztneve
    last_name VARCHAR(50) NOT NULL, -- Ügyfél vezetékneve
    phone_number VARCHAR(20), -- Telefonszám
    email VARCHAR(100) UNIQUE, -- E-mail cím
    driver_license VARCHAR(50) UNIQUE NOT NULL -- Jogosítvány száma
    last_login TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Rentals (
    rental_id INT PRIMARY KEY AUTO_INCREMENT, -- Egyedi azonosító a kölcsönzéshez
    customer_id INT NOT NULL, -- Hivatkozás az ügyfélre
    car_id INT NOT NULL, -- Hivatkozás az autóra
    rental_date DATE NOT NULL, -- Kölcsönzés kezdete
    return_date DATE, -- Visszahozatal dátuma
    total_cost DECIMAL(10,2), -- Teljes költség (számított mező)
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (bike_id) REFERENCES Motorcycles(bike_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT, -- Egyedi azonosító a fizetéshez
    rental_id INT NOT NULL, -- Hivatkozás a kölcsönzésre
    payment_date DATE NOT NULL, -- Fizetés dátuma
    amount DECIMAL(10,2) NOT NULL, -- Befizetett összeg
    method ENUM('cash', 'card', 'transfer') NOT NULL, -- Fizetési mód
    FOREIGN KEY (rental_id) REFERENCES Rentals(rental_id)
);