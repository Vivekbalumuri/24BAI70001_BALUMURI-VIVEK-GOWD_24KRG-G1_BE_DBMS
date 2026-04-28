
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR2(100),
    city VARCHAR2(50)
);

INSERT INTO Suppliers (supplier_id, supplier_name, city) VALUES (1, 'TechCorp', 'New York');
INSERT INTO Suppliers (supplier_id, supplier_name, city) VALUES (2, 'DataSystems', 'Los Angeles');
COMMIT;

CREATE OR REPLACE PROCEDURE SwapCities (id1 IN INT, id2 IN INT) AS
    temp_city VARCHAR2(50);
BEGIN
    
    SELECT city INTO temp_city FROM Suppliers WHERE supplier_id = id1;
    
    
    UPDATE Suppliers 
    SET city = (SELECT city FROM Suppliers WHERE supplier_id = id2) 
    WHERE supplier_id = id1;

    
    UPDATE Suppliers 
    SET city = temp_city 
    WHERE supplier_id = id2;
    
    COMMIT;
END;
/
