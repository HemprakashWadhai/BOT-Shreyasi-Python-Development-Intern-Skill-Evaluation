/* 3. Query Writing Challenge:
Consider a table orders with columns order_id, customer_id, order_date, and total_amount. Write a SQL query to calculate the total revenue generated in the last quarter, grouped by month.

CREATE DATABASE sales_db;

USE sales_db;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
); */


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
