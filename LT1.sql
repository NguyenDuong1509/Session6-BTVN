CREATE DATABASE ss6LT1;

CREATE TABLE Products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10,2),
	stock INT
);
--Yeu cau 1
INSERT INTO Products (name, category, price, stock) VALUES 
('Laptop Dell XPS', 'Electronics', 1500.00, 10),
('iPhone 15 Pro', 'Electronics', 999.99, 25),
('Bàn làm việc gỗ', 'Furniture', 120.50, 5),
('Chuột không dây', 'Accessories', 25.00, 50),
('Tai nghe Sony WH', 'Electronics', 350.00, 15);
--Yeu cau 2
SELECT * FROM Products
--Yeu cau 3
SELECT name, category, price, stock
FROM Products
ORDER BY price DESC
LIMIT 3;
--Yeu cau 4
SELECT name, category, price, stock
FROM Products
WHERE category ILIKE '%Electronics' AND price < 10000000;
--Yeu cau 5
SELECT name, category, price, stock
FROM Products
ORDER BY stock ASC;






