CREATE DATABASE ss6LT1;
CREATE TABLE Employee (
	id SERIAL PRIMARY KEY,
	full_name VARCHAR(100),
	department VARCHAR(50),
	salary NUMERIC(10,2),
	hire_date DATE
);
--Yeu cau 1
INSERT INTO Employee (full_name, department, salary, hire_date) VALUES 
('Nguyen Van An', 'IT', 1500.00, '2023-01-15'),
('Tran Thi Bich', 'HR', 1200.50, '2023-03-20'),
('Le Van Cong', 'Marketing', 1350.00, '2023-06-10'),
('Pham Minh Duong', 'IT', 1600.00, '2024-01-05'),
('Hoang Lan Anh', 'Finance', 1450.75, '2023-11-12'),
('Dang Van An', 'Sales', 1100.00, '2024-02-28');

--Yeu cau 2
UPDATE Employee
SET salary= salary *1.1
WHERE department = 'IT';
--Yeu cau 3
DELETE FROM Employee 
WHERE salary < 6000000;
--Yeu cau 4
SELECT full_name
FROM Employee
WHERE full_name ILIKE '%An';
--Yeu cau 5
SELECT full_name,hire_date
FROM Employee
WHERE hire_date BETWEEN '2023-01-01' AND '2023-12-31';

