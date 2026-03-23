CREATE DATABASE ss6LT6;

CREATE TABLE Orders (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount NUMERIC(10, 2)
);
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES 
(1, '2026-03-01', 1500.50),
(2, '2026-03-05', 450000.00),
(1, '2026-03-10', 890.00),
(3, '2026-03-15', 12500000.75),
(4, '2026-03-19', 62000000.00);
--Yeu cau 1
SELECT SUM(total_amount) AS total_revenue,
    COUNT(id) AS total_orders,
    AVG(total_amount) AS average_order_value
FROM Orders; 
--Yeu cau 2
SELECT EXTRACT(YEAR FROM order_date) AS order_year,
    SUM(total_amount) AS total_revenue
FROM Orders
GROUP BY EXTRACT(YEAR FROM order_date);
--Yeu cau 3
SELECT order_date, total_amount
FROM Orders
GROUP BY order_date, total_amount
HAVING total_amount > 50000000;
--Yeu cau 4
SELECT customer_id
FROM Orders
ORDER BY total_amount DESC
LIMIT 5;
