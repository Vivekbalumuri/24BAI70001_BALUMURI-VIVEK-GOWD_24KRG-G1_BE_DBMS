CREATE TABLE Employee (
    Id VARCHAR(5),
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT,
    DOJ DATE
);

INSERT INTO Employee VALUES ('e001', 'Gurman', 'Sales', 40000, '11-FEB-2021');
INSERT INTO Employee VALUES ('e002', 'Abhiram', 'Sales', 40000, '02-AUG-2022');
INSERT INTO Employee VALUES ('e003', 'Nethra', 'HR', 100000, '03-JUN-2019');
INSERT INTO Employee VALUES ('e004', 'Gowtham gowd', 'IT', 80000, '18-NOV-2020');
INSERT INTO Employee VALUES ('e005', 'Prabhas', 'Finance', 50000, '19-SEP-2022');


SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;

SELECT department, AVG(salary) AS avg_salary
FROM employee GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee GROUP BY department
HAVING AVG (salary) > 30000 ;
