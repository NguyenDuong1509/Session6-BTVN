CREATE DATABASE Ss6lt9;
CREATE TABLE Product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2)
);

CREATE TABLE OrderDetail (
    id SERIAL PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);
INSERT INTO Product (name, category, price) VALUES 
('iPhone 15 Pro', 'Electronics', 999.00),
('MacBook Air M2', 'Electronics', 1199.50),
('Logitech MX Master 3S', 'Accessories', 99.00),
('Bàn phím Keychron K2', 'Accessories', 85.00),
('Màn hình Dell Ultrasharp', 'Electronics', 450.00),
('Sách Clean Code', 'Books', 35.00);
INSERT INTO OrderDetail (order_id, product_id, quantity) VALUES 
(101, 1, 1),
(101, 3, 2),  
(102, 2, 1),
(102, 5, 1), 
(103, 4, 1), 
(103, 6, 3);
--Yeu cau 1
SELECT name as product_name, SUM(price * quantity) as total_sales
FROM Product p
JOIN OrderDetail od ON p.id = product_id
GROUP BY name;
--Yeu cau 2
SELECT category , AVG(price * quantity)
FROM Product p
JOIN OrderDetail od ON p.id = product_id
GROUP BY category;
--Yeu cau 3
SELECT category , AVG(price * quantity)
FROM Product p
JOIN OrderDetail od ON p.id = product_id
GROUP BY category
HAVING AVG(price * quantity) > 20000000;
--Yeu cau 4
SELECT name, SUM(od.quantity * p.price) 
FROM Product p
JOIN OrderDetail od ON p.id = od.product_id
GROUP BY p.name
HAVING SUM(od.quantity * p.price) > (
    SELECT AVG(od_sub.quantity * p_sub.price)
    FROM OrderDetail od_sub
    JOIN Product p_sub ON od_sub.product_id = p_sub.id
);
--Yeu cau 5
SELECT p.name AS product_name, SUM(od.quantity) 
FROM Product p
LEFT JOIN OrderDetail od ON p.id = od.product_id
GROUP BY p.name, p.id;