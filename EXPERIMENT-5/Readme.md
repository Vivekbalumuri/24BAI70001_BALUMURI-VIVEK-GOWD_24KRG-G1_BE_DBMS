# Experiment 5

## Aim
To understand and apply conditional logic in SQL by using the modulus operator (MOD / %) to analyze numerical data and classify employee salaries as odd or even, thereby improving data analysis and decision-making skills in SQL.

---

## Objectives
* To write and execute SQL queries that use the MOD (%) operator to check employee salaries and display odd and even salary values separately from an employee table.

---

## Practical/Experiment Steps
* Schema Architecture: Created the employees table with a structured format, ensuring the emp_id serves as the Primary Key for data integrity.
* Data Ingestion: Populated the table with diverse employee records including names and specific salary figures to provide a sufficient dataset for numerical analysis.
* Mathematical Operation: Leveraged the modulus operator (%) to perform a parity check on the salary column by dividing each value by 2.
* Conditional Classification: Integrated a CASE statement to evaluate the result of the modulus operation and assign a descriptive text label to each record.
* Dynamic Column Generation: Produced a virtual column named salary_type during execution to display the results of the logic without altering the physical table structure.

---

## Procedure
1. Initialised the database environment using PostgreSQL or Oracle XE and opened the query editor.
2. Executed the CREATE TABLE script to define the employee information schema.
3. Used INSERT INTO statements to add multiple rows of sample data, ensuring a mix of odd and even salary values.
4. Drafted a SELECT query to retrieve all existing columns while preparing for the conditional logic implementation.
5. Applied the % operator within a CASE structure to determine if the emp_sal remained with a zero or non-zero remainder.
6. Assigned the labels 'Even Salary' or 'Odd Salary' based on the evaluation of the conditional branch.
7. Ran the complete query to verify that numerical values (like 12000 vs. 15675) were accurately classified in the output window.
8. Reviewed the resulting data grid to ensure the salary_type column correctly reflected the parity of the corresponding salary.
9. Saved the final SQL script and captured screenshots of the results for record maintenance

---

## I/O Analysis

**1. Input:**
```sql
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
```

**Output:**


<img width="743" height="793" alt="image" src="https://github.com/user-attachments/assets/a56af24d-3807-42ca-ad71-08f230aac6ff" />



---

## Learning Outcomes
* Gained proficiency in using the modulus operator to identify patterns in numerical data.
* Implemented CASE statements to categorise records based on mathematical results.
* Generated dynamic columns that provide analytical insights during data retrieval.
* Gained skills in transforming raw integers into meaningful descriptive categories for reporting.
