DROP DATABASE IF EXISTS Carrental;
CREATE DATABASE IF NOT EXISTS Carrental
CHARacter SET utf8mb4
COLLATE utf8mb4_general_ci;
USE Carrental;

CREATE TABLE cars(
    car_id INT auto_increment PRIMARY KEY,

);

CREATE TABLE motorcycles(

)

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT, -- Egyedi azonosító az ügyfélhez
    first_name VARCHAR(50) NOT NULL, -- Ügyfél keresztneve
    last_name VARCHAR(50) NOT NULL, -- Ügyfél vezetékneve
    phone_number VARCHAR(20), -- Telefonszám
    email VARCHAR(100) UNIQUE, -- E-mail cím
    driver_license VARCHAR(50) UNIQUE NOT NULL -- Jogosítvány száma
);