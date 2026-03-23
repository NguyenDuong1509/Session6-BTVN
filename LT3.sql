CREATE DATABASE ss6LT3;
CREATE TABLE Customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    points INT
);
--Yeu cau 1
INSERT INTO Customer (name, email, phone, points)
VALUES 
('Nguyen Van Hung', 'hung.nv@gmail.com', '0912345678', 150),
('Tran Thi Mai', 'mai.tt@yahoo.com', '0987654321', 200),
('Le Minh Tuấn', 'tuan.lm@outlook.com', '0901122334', 50),
('Pham Hoang Long', NULL, '0933445566', 0),
('Hoang Thu Thuy', 'thuy.ht@gmail.com', '0977889900', 300),
('Dang Quoc Anh', 'anh.dq@gmail.com', '0944556677', 120),
('Vu Kim Chi', 'chi.vk@hotmail.com', '0966778899', 450);
--Yeu cau 2
SELECT DISTINCT name
FROM customer;
--Yeu cau 3
SELECT *
FROM customer
WHERE email IS NULL;
--Yeu cau 4
SELECT name, points
FROM customer
ORDER BY points DESC
LIMIT 3
OFFSET 1;
--Yeu cau 5
SELECT *
FROM customer
ORDER BY name DESC;








