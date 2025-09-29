DROP DATABASE IF EXISTS Carrental;
CREATE DATABASE IF NOT EXISTS Carrental
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;
USE Carrental;

CREATE TABLE Cars(
    car_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL, --egyedi azonosító
    license_plate CHAR(6) not NULL, --rendszám
    brand VARCHAR(50) NOT NULL, --márka
    model VARCHAR(50) NOT NULL, --típus
    cw ENUM("RED","BLUE","WHITE","BLACK","GRAY","YELLOW","GREEN","SILVER","GOLD","PURPLE",), --szín
    engine VARCHAR(50) NOT NULL, --motor típus
    year_  INT NOT NULL, --gyártási év
    daily_rate DECIMAL(10,2) NOT NULL, --napi bérleti díj
    status_ ENUM("avalaible", "rented", "maintenance") NOT NULL, --állapot elérhető, foglalt stb
    deposit_fee DECIMAL(10.2), --foglaló értéke
    contact VARCHAR NOT NULL(50), --elérhetőség
    type_ ENUM("enduro", "utcai","sport", "supermoto", "enduro","chopper","tour",) --autó típus
)

CREATE TABLE motorcycles(
    bike_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL, --egyedi azonosító
    license_plate CHAR(6) not NULL, --rendszám
    brand VARCHAR(50) NOT NULL,  --márka
    model VARCHAR(50) NOT NULL,--típus
    cw ENUM("RED","BLUE","WHITE","BLACK","GRAY","YELLOW","GREEN","SILVER","GOLD","PURPLE",),--szín
    engine VARCHAR(50) NOT NULL,--motor típus
    year_  INT NOT NULL, --gyártási év
    daily_rate DECIMAL(10,2) NOT NULL, --napi bérleti díj
    status_ ENUM("avalaible", "rented", "maintenance") NOT NULL, --állapot elérhető, foglalt stb
    deposit_fee DECIMAL(10.2), --foglaló értéke
    contact VARCHAR NOT NULL(50), --elérhetőség
    type_ ENUM("enduro", "utcai","sport", "supermoto", "enduro","chopper","tour",) --motor típus
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