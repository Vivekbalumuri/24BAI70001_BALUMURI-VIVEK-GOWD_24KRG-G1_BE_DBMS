
CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(20),
    emp_sal INT
);

INSERT INTO employees VALUES(1, 'Jack', 12000);
INSERT INTO employees VALUES(2, 'Sarah', 15675);
INSERT INTO employees VALUES(3, 'John', 13000);
INSERT INTO employees VALUES(4, 'Sally', 20001);
INSERT INTO employees VALUES(5, 'Charlie', 15000);


SELECT * ,
CASE
WHEN emp_sal%2 = 0 THEN 'Even Salary'
ELSE 'Odd Salary'
END AS salary_type
FROM employees;
