CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR2(100)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    order_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


INSERT INTO Products (product_id, product_name) VALUES (1, 'Laptop');
INSERT INTO Products (product_id, product_name) VALUES (2, 'Smartphone');
INSERT INTO Products (product_id, product_name) VALUES (3, 'Headphones');
INSERT INTO Products (product_id, product_name) VALUES (4, 'Monitor');

INSERT INTO Orders (order_id, product_id, order_date) VALUES (101, 1, SYSDATE);
INSERT INTO Orders (order_id, product_id, order_date) VALUES (102, 1, SYSDATE - 1);
INSERT INTO Orders (order_id, product_id, order_date) VALUES (103, 2, SYSDATE);
INSERT INTO Orders (order_id, product_id, order_date) VALUES (104, 3, SYSDATE - 2);

COMMIT;

SELECT p.product_name, COUNT(o.order_id) AS total_orders
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id
GROUP BY p.product_name;
