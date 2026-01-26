Experiment 1 : Library Management System Implementation

Aim of the Session The aim of this practical is to design and implement a relational database schema for a Library Management System. This involves defining tables with specific constraints, establishing relationships between entities, and managing database security through role-based access control.

Objective of the Session Upon completing this session, the following objectives were achieved:

Developed table structures using Primary Keys, Foreign Keys, and Check Constraints for data validation.

Gained proficiency in DML (Data Manipulation Language) operations, specifically INSERT, SELECT, UPDATE, and DELETE.

Implemented DCL (Data Control Language) to manage user roles and granular permissions.

Maintained referential integrity across multiple related tables (books, library_visitors, and book_issue).

Practical / Experiment Steps The implementation was carried out through the following tasks:
Schema Definition: Created the base tables for books and library_visitors with specific constraints such as NOT NULL, UNIQUE, and CHECK (e.g., ensuring visitor age is 18+).

Relational Setup: Created the book_issue table to act as a transaction bridge, linking books and visitors via Foreign Keys.

Data Population: Populated the tables with initial records to test the schema's validity.

Operational Testing: Performed updates on user information and attempted deletion of records to observe constraint behavior.

Security Administration: Created a librarian role with login credentials and configured its access levels using GRANT and REVOKE commands.

Procedure of the Practical The following steps were followed during the execution:
System Initialization: Logged into the database environment and established a connection to the server.

Database Creation: Initialized a new database to house the library management system.

Executing Table Scripts: Ran the CREATE TABLE commands in a specific sequence (creating parent tables before dependent transaction tables).

Data Entry: Executed INSERT statements to add sample books and visitor profiles.

Query Verification: Used SELECT queries to verify that the data was correctly stored and consistent across tables.

Data Modification: Tested the UPDATE and DELETE commands to ensure the system handles changes as intended.

Role Configuration: Defined the librarian role and assigned specific table privileges.

Security Verification: Tested and then revoked permissions to confirm the effectiveness of the security policy.

Record Maintenance: Saved the SQL script and took screenshots of the execution results.

I/O Analysis (Input / Output Analysis) Input Queries SQL CREATE TABLE books( id INT PRIMARY KEY, name VARCHAR(50) NOT NULL, author_name VARCHAR(50) NOT NULL, count INT CHECK(count>0) );
CREATE TABLE library_visitors( user_id INT PRIMARY KEY, user_name VARCHAR(20) NOT NULL, age INT CHECK(age>=18) NOT NULL, email VARCHAR(40) UNIQUE NOT NULL );

CREATE TABLE book_issue( book_issue_id INT PRIMARY KEY, book_id INT NOT NULL, user_id INT NOT NULL, FOREIGN KEY (book_id) REFERENCES books(id), FOREIGN KEY (user_id) REFERENCES library_visitors(user_id), book_issue_date DATE NOT NULL );

INSERT INTO books VALUES(1, 'Harry Potter', 'J.K.Rowling', 3);

INSERT INTO library_visitors VALUES(101, 'John', 19, 'example@.com');

UPDATE library_visitors SET email='John@gmail.com' WHERE user_id = 101;

CREATE ROLE librarian WITH LOGIN PASSWORD 'PASSWORD';

GRANT SELECT, INSERT, DELETE, UPDATE ON books TO librarian;

![Screenshot 2026-01-26 at 10 05 31 AM](https://github.com/user-attachments/assets/8aa65a7b-3b1b-4478-856a-0a775fa167df)
![Screenshot 2026-01-26 at 10 05 59 AM](https://github.com/user-attachments/assets/edbcd824-7ce4-4fe1-9468-ce3c1f5ec4ba)
![Screenshot 2026-01-26 at 10 06 32 AM](https://github.com/user-attachments/assets/140be220-dd27-409e-90bd-fe01960f74bc)
![Screenshot 2026-01-26 at 10 06 33 AM](https://github.com/user-attachments/assets/b3f57913-da13-4481-900d-d2db498de9bf)
![Screenshot 2026-01-26 at 10 06 55 AM](https://github.com/user-attachments/assets/fced96cc-e43f-4afc-99d1-ace145906e95)
![Screenshot 2026-01-26 at 10 07 11 AM](https://github.com/user-attachments/assets/4291e4e8-ae05-429f-bdb8-eddad94783c8)
![Screenshot 2026-01-26 at 10 07 33 AM](https://github.com/user-attachments/assets/91bc54b4-4f6a-4e22-a13b-1476bacf4b68)








Output Details Schema Success: All tables were created successfully. The system correctly enforced the CHECK(age>=18) constraint, rejecting invalid entries. alt text DML Results: The UPDATE query correctly modified the email field for user 101, and SELECT queries displayed the current state of all tables accurately. alt text

DCL Verification: The librarian role was successfully created and assigned the necessary privileges for library management tasks.

alt text alt text alt text

Validation: Testing confirmed that after the REVOKE command, the librarian could no longer perform operations on the books table, ensuring the security policy is functional. alt text We also confirmed the permissions of the role “librarian” by checking the table privileges. alt text 6. Learning Outcome This practical session provided significant insights into:

Structural Logic: Understanding how Foreign Keys and Check Constraints maintain high data quality and prevent logical errors.

Security Implementation: Learning to manage database security through roles rather than individual user permissions.

Practical Application: Applying SQL fundamentals to a real-world scenario (Library Management), demonstrating how relational databases handle complex interactions between entities.
