CREATE DATABASE ss6lt7;
CREATE TABLE Department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Employee (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    department_id INT,
    salary NUMERIC(10,2)
);

INSERT INTO Department (name) VALUES
('Nhân sự'),
('Kế toán'),
('Công nghệ thông tin'),
('Marketing'),
('Kinh doanh'),
('Hành chính'),
('Chăm sóc khách hàng');

INSERT INTO Employee (full_name, department_id, salary) VALUES
('Nguyễn Văn A', 1, 10000000),
('Trần Thị B', 2, 12000000),
('Lê Văn C', 3, 15000000),
('Phạm Thị D', 4, 11000000),
('Hoàng Văn E', 5, 13000000),
('Đỗ Thị F', 6, 9000000),
('Vũ Văn G', 7, 8000000);

--Yeu cau 1
SELECT e.full_name,d.name
FROM Employee e
INNER JOIN Department d ON d.id=e.department_id;
--Yeu cau 2
SELECT name as department_name,
		AVG(salary) as avg_salary 
FROM Department d
JOIN Employee e ON d.id=e.department_id
GROUP BY name;
--Yeu cau 3
SELECT name as department_name,
		AVG(salary) as avg_salary 
FROM Department d
JOIN Employee e ON d.id=e.department_id
GROUP BY name
HAVING AVG(salary) > 10000000;
--Yeu cau 4
SELECT d.name AS department_name
FROM Department d
LEFT JOIN Employee e ON d.id = e.department_id
WHERE e.id IS NULL;