CREATE DATABASE Ss6lt8;
CREATE TABLE Orders (
	id SERIAL PRIMARY KEY,
	customer_id INT,
	order_date DATE,
	total_amount NUMERIC(10,2)
);
CREATE TABLE Customer (
	id SERIAL PRIMARY KEY,
	name varchar (100)
);
INSERT INTO Customer (name) VALUES 
('Nguyễn Văn A'),
('Trần Thị B'),
('Lê Văn C'),
('Phạm Thị D'),
('Hoàng Văn E'),
('Đặng Thị F'),
('Ngô Văn G');
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES 
(1, '2024-01-10', 150.50),
(2, '2024-01-12', 200.00),
(1, '2024-02-15', 50.25),
(3, '2024-02-20', 320.00),
(4, '2024-03-05', 120.75),
(5, '2024-03-10', 450.00),
(6, '2024-03-15', 85.00);
--Yeu cau 1 
SELECT name, SUM(total_amount)
FROM customer c
join Orders o ON c.id = o.customer_id
GROUP BY name
ORDER BY SUM(total_amount) DESC;
--Yeu cau 2
SELECT c.name, SUM(o.total_amount) AS total
FROM Customer c
JOIN Orders o ON c.id = o.customer_id
GROUP BY c.id, c.name
HAVING SUM(o.total_amount) = (
    SELECT SUM(total_amount)
    FROM Orders
    GROUP BY customer_id
    ORDER BY SUM(total_amount) DESC
    LIMIT 1
);
--Yeu cau 3
SELECT c.name
FROM Customer c
LEFT JOIN Orders o ON c.id = o.customer_id
WHERE o.id is Null;
--Yeu cau 4
SELECT name, sum(total_amount),avg(total_amount)
FROM customer c
JOIN Orders o ON c.id = o.customer_id
group by name
HAVING SUM(total_amount) > (SELECT AVG(total_amount)
							FROM Orders
							);




