# **Experiment – 3**


* **Student Name:** Balumuri Vivek Gowd
* **UID:** 24BAI70001
* **Branch:** CSE – AIML
* **Section/Group:** 24AIT_KRG G1
* **Semester:** 4
* **Date of Performance:** 28/01/2026
* **Subject Name:** DBMS
* **Subject Code:** 24CSH-298

---

## **Aim**

To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, and to display output using built-in procedures.

---

## **Software Requirements**

### **Database Management System**

* PostgreSQL
* Oracle

### **Database Administration Tool**

* pgAdmin

---

## **Objectives**

* To create a simple PL/SQL program demonstrating:

  * Declaration Section
  * Execution Section

---

## **Problem Statement**

Design and implement a simple PL/SQL program that demonstrates the basic structure of a PL/SQL block. The program should include a declaration section to define variables and an execution section to perform operations using those variables and display the results using appropriate output statements.

---

## **PL/SQL Block Structure**

### **Declaration Section (DECLARE)**

Variables are declared and initialized:

* `emp_id` → Employee ID
* `emp_name` → Employee Name
* `emp_salary` → Employee Salary

---

### **Execution Section (BEGIN … END)**

* Output is displayed using:

  * `DBMS_OUTPUT.PUT_LINE` (Oracle)
  * `RAISE NOTICE` (PostgreSQL)

---

## **Practical / Experiment Steps**

* **Block Structuring:**
  Designed a foundational PL/SQL block consisting of a Declaration section for memory allocation and an Execution section for logic processing.

* **Variable Initialization:**
  Defined and assigned static values to organizational variables such as Employee ID, Name, and Salary.

* **Computational Logic:**
  Integrated an arithmetic operation to calculate House Rent Allowance (HRA) at 40% of the base salary.

* **Conditional Processing:**
  Implemented an `IF-ELSE` statement to evaluate tax liability based on a salary threshold.

* **Output Orchestration:**
  Used `RAISE NOTICE` to format and display results in the console.

---

## **Procedure**

### **1. Setup and Preparation**

* Open **pgAdmin** and connect to the PostgreSQL database.
* Confirm the objective of creating a basic PL/SQL block demonstrating declaration, execution, and output.

---

### **2. Block Implementation – Declaration Section**

* Initiate the procedural block using `DO $$` and `END $$`.
* Declare the following variables:

  * `emp_id` (INT)
  * `emp_name` (VARCHAR)
  * `emp_salary` (NUMERIC)
* Assign static values:

  * `emp_id := 101`
  * `emp_name := 'THOMAS'`
  * `emp_salary := 25000`

---

### **3. Execution Logic and Output**

* Display employee details using `RAISE NOTICE`.
* Calculate House Rent Allowance (HRA) as `40%` of salary.
* Implement conditional logic:

  * If salary > 60000 → Display tax message.
  * Else → Display non-tax message.

---

### **4. Execution and Verification**

* Execute the block.
* Verify:

  * Correct display of variable values.
  * Accurate HRA calculation.
  * Correct tax message based on salary.

---

## **Input / Output Analysis**

### **SQL Input Query**

```sql
DO $$
DECLARE
    emp_id     INT := 101;
    emp_name   VARCHAR(20) := 'THOMAS';
    emp_salary NUMERIC := 25000;
BEGIN
    RAISE NOTICE 'EMPLOYEE ID: %', emp_id;
    RAISE NOTICE 'EMPLOYEE NAME: %', emp_name;
    RAISE NOTICE 'SALARY: RS. %', emp_salary;
    RAISE NOTICE 'HOUSE RENT ALLOWANCE: RS. %', (0.40 * emp_salary);

    IF emp_salary > 60000 THEN
        RAISE NOTICE 'YOU NEED TO PAY TAX';
    ELSE
        RAISE NOTICE 'YOU DO NOT HAVE TO PAY TAX';
    END IF;
END $$;
```

---

## **Input / Output Analysis Table**

| Section                 | Element              | Value / Description             | Result / Expected Output   |
| ----------------------- | -------------------- | ------------------------------- | -------------------------- |
| **Input (Declaration)** | emp_id (INT)         | 101                             | N/A                        |
|                         | emp_name (VARCHAR)   | 'THOMAS'                        | N/A                        |
|                         | emp_salary (NUMERIC) | 25000                           | N/A                        |
| **Process (Execution)** | HRA Calculation      | 0.40 × emp_salary               | 10000                      |
|                         | Conditional Check    | emp_salary > 60000              | FALSE                      |
| **Output**              | Employee ID          | EMPLOYEE ID: 101                | Displayed                  |
|                         | Employee Name        | EMPLOYEE NAME: THOMAS           | Displayed                  |
|                         | Salary               | SALARY: RS. 25000               | Displayed                  |
|                         | HRA                  | HOUSE RENT ALLOWANCE: RS. 10000 | Displayed                  |
|                         | Tax Status           | ELSE condition                  | YOU DO NOT HAVE TO PAY TAX |

---

## **Learning Outcomes**

* Understood the basic structure of a PL/SQL program.
* Learnt to declare, initialize, and use variables of different data types.
* Implemented arithmetic operations and conditional branching.
* Used built-in output procedures to display formatted results.
