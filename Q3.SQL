/* 3. Query Writing Challenge:
Consider a table orders with columns order_id, customer_id, order_date, and total_amount. Write a SQL query to calculate the total revenue generated in the last quarter, grouped by month.
*/

/*
   Create the Database and Table
*/
CREATE DATABASE sales_db;

USE sales_db;

/* 
   Create the orders table with columns:
   - order_id: Primary key, auto-incremented
   - customer_id: Integer
   - order_date: Date
   - total_amount: Decimal
*/
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

/* 
   Insert sample data into the orders table
*/
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2024-04-10', 100.00),
(2, '2024-04-20', 200.00),
(3, '2024-05-15', 150.00),
(4, '2024-05-25', 300.00),
(5, '2024-06-05', 250.00),
(6, '2024-06-25', 350.00),
(7, '2024-07-05', 400.00);  -- This order is outside the last quarter

/* 
   Calculate total revenue for the last quarter, grouped by month
   The query groups the results by month and orders them chronologically
*/
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS total_revenue
FROM
    orders
WHERE
    order_date >= '2024-04-01' AND order_date < '2024-07-01'
GROUP BY
    DATE_FORMAT(order_date, '%Y-%m')
ORDER BY
    month;
