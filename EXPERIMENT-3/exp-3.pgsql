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
