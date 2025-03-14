CREATE DATABASE exp2;
USE exp2;
CREATE TABLE Employee(
   EMPNO INT PRIMARY KEY,
   ENAME VARCHAR(50) NOT NULL,
   JOB VARCHAR(50) NOT NULL,
   MGR INT,
   SAL DECIMAL(10,2) NOT NULL);
   DESCRIBE Employee;
ALTER TABLE Employee
ADD COLUMN commission DECIMAL(10,2) DEFAULT 0.00;
INSERT INTO Employee(EMPNO, ENAME, JOB, MGR, SAL, commission) VALUES
(101, 'John Doe', 'Manager', NULL, 5000.00, 1000.00),
(102, 'Jane Smith', 'Developer', 101, 4000.00, 500.00),
(103, 'Bob Johnson', 'Analyst', 101, 3500.00, NULL),
(104, 'Alice Jones', 'Designer', 101, 3800.00, 800.00),
(105, 'Michael Brown', 'Engineer', 101, 4200.00, 700.00);
SELECT * FROM Employee;
ALTER TABLE Employee
MODIFY COLUMN JOB VARCHAR(100) NOT NULL;
ALTER TABLE Employee
RENAME COLUMN MGR TO MANAGER;
DELETE FROM Employee WHERE EMPNO = 105;
