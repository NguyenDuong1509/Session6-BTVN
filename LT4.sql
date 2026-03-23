CREATE DATABASE ss6LT4;
CREATE TABLE OrderInfo (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total NUMERIC(10,2),
    status VARCHAR(20)
);
--Yeu cau 1
INSERT INTO OrderInfo (customer_id, order_date, total, status)VALUES 
(1, '2026-03-01', 750000.00, 'Completed'),   
(2, '2024-10-05', 4500.50, 'Pending'),       
(3, '2025-08-10', 1250000.75, 'Shipped'),    
(1, '2024-10-12', 55000.00, 'Cancelled'),    
(4, '2023-09-15', 620000.00, 'Processing');  
--Yeu cau 2
SELECT *
FROM OrderInfo
WHERE total > 500000;
--Yeu cau 3
SELECT customer_id, order_date, total, status
FROM OrderInfo
WHERE order_date BETWEEN '2024-10-1' AND '2024-10-31';
--Yeu cau 4
SELECT customer_id, status
FROM OrderInfo
WHERE status ILIKE 'Completed';
--Yeu cau 5
SELECT id, customer_id, order_date, total, status
FROM OrderInfo
ORDER BY order_date DESC
LIMIT 2;