CREATE DATABASE ss6LT5;

CREATE TABLE Course (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    instructor VARCHAR(50),
    price NUMERIC(10, 2),
    duration INT 
);
--Yeu cau 1
INSERT INTO Course (title, instructor, price, duration) VALUES 
('Lập trình Java cơ bản', 'Nguyễn Văn A', 500000.00, 40),
('Cấu trúc dữ liệu và giải thuật', 'Trần Thị B', 750000.00, 60),
('Thiết kế giao diện UX/UI', 'Lê Minh C', 1200000.00, 30),
('Quản trị cơ sở dữ liệu SQL', 'Phạm Hoàng D', 900000.00, 45),
('Lập trình Android với Kotlin', 'Hoàng Thu E', 1500000.00, 80),
('Phát triển Web Fullstack', 'Đặng Quốc F', 2500000.00, 120);
--Yeu cau 2
UPDATE Course 
SET price = price * 1.5
WHERE duration > 30;
--Yeu cau 3
DELETE FROM Course 
WHERE title ILIKE '%Demo%';
--Yeu cau 4
SELECT * FROM Course
WHERE title ILIKE '%SQL%';
--Yeu cau 5
SELECT *
FROM Course
WHERE price BETWEEN 500000 AND 2000000
ORDER BY price DESC
LIMIT 3;