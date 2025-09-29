-- ===========================
-- Példa adatok
-- ===========================

INSERT INTO Customers (first_name, last_name, phone_number, email, driver_license) VALUES
('Péter', 'Kovács', '06301234567', 'peter.kovacs@example.com', 'DL123456'), -- Péter adatai
('Anna', 'Szabó', '06305554433', 'anna.szabo@example.com', 'DL654321'), -- Anna adatai
('Gábor', 'Tóth', '06307778899', 'gabor.toth@example.com', 'DL789123'), -- Gábor adatai
('Eszter', 'Beterp', '06304443322', 'eszter.beterp@example.com', 'DL456789'), -- Eszter adatai
('Armand', 'Lakatos', '06704208899', 'armand.lakatos@example.com', 'DL287354'), -- Armand adatai
('Renátó', 'Orsós', '06207893322', 'renato.orsos@example.com', 'DL987323'); -- Renátó adatai

INSERT INTO Rentals (customer_id, vehicle_id, rental_date, return_date, total_cost) VALUES
(1, 2, '2025-09-01', '2025-09-05', 44000.00), -- Péter bérelte a Golfot
(2, 1, '2025-09-10', '2025-09-12', 24000.00), -- Anna bérelte a Corollát
(3, 4, '2025-09-15', '2025-09-18', 27000.00), -- Gábor bérelte a Swiftet
(4, 2, '2025-09-20', '2025-09-20', 22000.00), -- Eszter bérelte a Golfot
(5, 6, '2025-09-15', '2025-09-18', 28000.00), -- Armand bérelte a KTM-et
(6, 5, '2025-09-20', '2025-09-22', 52000.00); -- Renátó bérelte a Imprezát

INSERT INTO Payments (rental_id, payment_date, amount, method) VALUES
(1, '2025-09-05', 44000.00, 'card'), -- Péter fizetése
(2, '2025-09-12', 24000.00, 'cash'), -- Anna fizetése
(3, '2025-09-18', 27000.00, 'transfer'), -- Gábor fizetése
(4, '2025-09-20', 22000.00, 'card'), --  Eszter fizetése 
(5, '2025-09-18', 28000.00, 'transfer'), -- Armand fizetése
(6, '2025-09-22', 52000.00, 'cash'); -- Renátó fizetése

INSERT INTO Cars (vehicle_id, license_plate, brand, model, cw, engine, year_, daily_rate, status_, deposit_fee, contact, type_) VALUES
('1','ABC123','','','','','','','','','',''),
('2','XYZ789','','','','','','','','','',''),
('5','JKL456','','','','','','','','','',''),
('4','QWE234','','','','','','','','','',''),
('7','RTY567','','','','','','','','','',''),
('11','UIO890','','','','','','','','','',''),

INSERT INTO Motorcycles (vehicle_id, license_plate, brand, model, cw, engine, year_, daily_rate, status_, deposit_fee, contact, type_) VALUES
('3','PAS345','HONDA','CBR','BLUE','1000CCM','2013','20000.00','available','10000.00','06201237889','sport'),
('6','DFG678','KTM','Duke','ORANGE','125ccm','2008','20000.00','available','10000.00','06201237889','utcai'),
('9','HJK901','SUZUKI','DRZ','YELLOW','500CCM','2010','20000.00','available','1000.00','06201237889','supermoto'),
('8','VBN234','HONDA','Dio','BLUE','50CCM','1989','2000.00','available','1000.00','06201237889','utcai'),
