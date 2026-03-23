CREATE DATABASE Ss6lt10;
CREATE TABLE OldCustomers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);
CREATE TABLE NewCustomers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);
INSERT INTO OldCustomers (name, city) VALUES 
('Nguyễn Văn An', 'Hà Nội'),
('Trần Thị Bình', 'TP.HCM'),
('Lê Hoàng Nam', 'Đà Nẵng'),
('Phạm Minh Đức', 'Cần Thơ');
INSERT INTO NewCustomers (name, city) VALUES 
('Nguyễn Văn An', 'Hà Nội'),    
('Trần Thị Bình', 'TP.HCM'),    
('Hoàng Thanh Tùng', 'Hải Phòng'),
('Đỗ Mỹ Linh', 'Huế');
--Yeu cau 1
SELECT name,city
FROM OldCustomers
UNION
SELECT name,city
FROM NewCustomers;
--Yeu cau 2
SELECT name,city
FROM OldCustomers
INTERSECT
SELECT name,city
FROM NewCustomers;
--Yeu cau 3
SELECT city,COUNT(*)
FROM (SELECT city FROM OldCustomers
    UNION ALL
    SELECT city FROM NewCustomers)
GROUP BY city ;
--Yeu cau 4
SELECT city, COUNT(*)
FROM (
    SELECT city FROM OldCustomers
    UNION ALL
    SELECT city FROM NewCustomers
)
GROUP BY city
HAVING COUNT(*) = (
    SELECT MAX(customer_count)
    FROM (
        SELECT COUNT(*) as customer_count
        FROM (
            SELECT city FROM OldCustomers
            UNION ALL
            SELECT city FROM NewCustomers)
            GROUP BY city) 
);