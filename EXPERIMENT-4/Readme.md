# Experiment 4  
## Conditional Control Statements in PL/SQL

---

## Aim
To design and implement PL/SQL programs utilising conditional control statements such as **IF–ELSE**, **ELSIF**, **ELSIF ladder**, and **CASE constructs** in order to control the flow of execution based on logical conditions and to analyse decision-making capabilities in PL/SQL blocks.

---

## Objectives
- Implement control structures in PL/SQL:
  - IF–ELSE  
  - IF–ELSIF–ELSE  
  - ELSIF Ladder  
  - CASE Statements  
- Analyse decision-making and flow control in PL/SQL blocks.

---

## Practical / Experiment Steps

### Control Structure Implementation
Designed multiple PL/SQL blocks to explore diverse conditional logic formats, including simple branching and multi-path evaluation.

### Logic Branching Analysis
Utilised IF–ELSE and ELSIF ladders to categorise numerical data into specific ranges, such as student grades and performance statuses.

### Selection Optimisation
Implemented the CASE statement as a streamlined alternative to multiple conditional checks for mapping discrete values like day numbers to names.

### Dynamic Messaging
Integrated variable-driven output strings to provide real-time feedback based on the evaluation of input conditions.

### Execution Flow Control
Validated the decision-making capabilities of the PL/SQL engine by testing various input scenarios to ensure the correct code path was activated.

---

## Procedure
1. Enabled the output server environment to ensure all procedural results were visible in the console window.  
2. Constructed a basic IF–ELSE block to perform a binary check on a numerical variable.  
3. Developed an IF–ELSIF–ELSE structure to map student marks to grades.  
4. Expanded conditional logic into an ELSIF ladder for performance classification.  
5. Implemented a CASE statement to convert day numbers into day names.  
6. Initialised test values to verify logic accuracy.  
7. Enclosed logic within `BEGIN...END;` blocks.  
8. Executed blocks and verified output using `DBMS_OUTPUT`.

---

## I/O Analysis

### 1. Positive / Non-Positive Number

```sql
DECLARE
    NUM NUMBER := -21;
BEGIN
    IF NUM > 0 THEN
        DBMS_OUTPUT.PUT_LINE('IT IS A POSITIVE NUMBER');
    ELSE
        DBMS_OUTPUT.PUT_LINE('IT IS A NON-POSITIVE NUMBER');
    END IF;
END;
```

---![Img 1](https://github.com/user-attachments/assets/c8d1d425-e8e2-4596-ada9-b0a7837a1faa)
![Img 2](https://github.com/user-attachments/assets/9bfdf71c-1e19-415b-a135-f19cd0a2128f)


### 2. Grading System

```sql
DECLARE
    MARKS NUMBER := 68;
    GRADE VARCHAR(1);
BEGIN
    IF MARKS >= 90 THEN
        GRADE := 'A';
    ELSIF MARKS >= 80 THEN
        GRADE := 'B';
    ELSIF MARKS >= 70 THEN
        GRADE := 'C';
    ELSIF MARKS >= 60 THEN
        GRADE := 'D';
    ELSE
        GRADE := 'F';
    END IF;

    DBMS_OUTPUT.PUT_LINE('MARKS = ' || MARKS || ', GRADE = ' || GRADE);
END;
```
![Img 3](https://github.com/user-attachments/assets/5159d05d-3ea5-4fe3-b8bb-cf06c872f0be)
![Img 4](https://github.com/user-attachments/assets/1e05babc-3812-4f03-8bb5-957ccbda6964)

---

### 3. Performance According to Marks

```sql
DECLARE
    MARKS NUMBER := 58;
    PERFORMANCE VARCHAR(20);
BEGIN
    IF MARKS >= 75 THEN
        PERFORMANCE := 'DISTINCTION';
    ELSIF MARKS >= 60 THEN
        PERFORMANCE := 'FIRST CLASS';
    ELSIF MARKS >= 50 THEN
        PERFORMANCE := 'SECOND CLASS';
    ELSIF MARKS >= 35 THEN
        PERFORMANCE := 'PASS';
    ELSE
        PERFORMANCE := 'FAIL';
    END IF;

    DBMS_OUTPUT.PUT_LINE('MARKS = ' || MARKS || ' AND PERFORMANCE = ' || PERFORMANCE);![Img 6](https://github.com/user-attachments/assets/f35f55f8-967a-4582-b395-e1724f109584)

END;
```
![Img 5](https://github.com/user-attachments/assets/6c759471-ca2d-4d06-b1fe-fc46ff6bfebc)
![Img 6](https://github.com/user-attachments/assets/8b6f01b2-a04b-4110-9dfd-0fb575ed98b1)


---

### 4. Day Name from Day Number

```sql
DECLARE
    DAYNUM NUMBER := 3;
    DAYNAME VARCHAR(20);
BEGIN
    DAYNAME := CASE DAYNUM
        WHEN 1 THEN 'SUNDAY'
        WHEN 2 THEN 'MONDAY'
        WHEN 3 THEN 'TUESDAY'
        WHEN 4 THEN 'WEDNESDAY'
        WHEN 5 THEN 'THURSDAY'
        WHEN 6 THEN 'FRIDAY'
        WHEN 7 THEN 'SATURDAY'
        ELSE 'INVALID DAY'
    END;

    DBMS_OUTPUT.PUT_LINE('IT IS ' || DAYNAME);
END;
```
![Img 7](https://github.com/user-attachments/assets/8be7677d-b311-4f88-97ec-d891aa668ffc)
![Img 8](https://github.com/user-attachments/assets/b4617548-4774-49a0-b46b-fa804c7c61be)

---

## Learning Outcomes
- Proficient use of IF–ELSE, ELSIF ladders, and CASE statements in PL/SQL.  
- Ability to categorise numerical data using logical conditions.  
- Understanding of execution flow control in PL/SQL programs.  
- Improved structured programming and debugging skills.

---
