CREATE DATABASE warehouse_db;

USE warehouse_db;

CREATE TABLE receiving (
    receiving_date DATE,
    tracking_number VARCHAR(30) PRIMARY KEY,
    product_name VARCHAR(100),
    cbm DECIMAL(5,2),
    weight DECIMAL(6,2)
);

INSERT INTO receiving VALUES
('2026-07-01','TRK1001','Laptop',0.50,8.50),
('2026-07-02','TRK1002','Keyboard',0.10,1.20),
('2026-07-03','TRK1003','Mouse',0.05,0.50),
('2026-07-04','TRK1004','Monitor',0.80,6.80),
('2026-07-05','TRK1005','Printer',1.20,12.50),
('2026-07-06','TRK1006','Speaker',0.30,3.20);

UPDATE receiving
SET weight = 9.00
WHERE tracking_number = 'TRK1001';

DELETE FROM receiving
WHERE tracking_number = 'TRK1006';

SELECT *
FROM receiving
WHERE weight > 5;

SELECT *
FROM receiving
ORDER BY receiving_date DESC;

ALTER TABLE receiving
ADD supplier VARCHAR(100);

ALTER TABLE receiving
DROP COLUMN supplier;

ALTER TABLE receiving
MODIFY product_name VARCHAR(150);