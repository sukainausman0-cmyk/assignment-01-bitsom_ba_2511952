-- Query 1: Show all customers
SELECT * 
FROM Customers;

-- Query 2: List customers from Mumbai
SELECT customer_name, customer_city
FROM Customers
WHERE customer_city = 'Mumbai';

-- Query 3: Show all orders with customer names and product names
SELECT o.order_id, c.customer_name, p.product_name, o.quantity, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id;

-- Query 4: Total sales per product
SELECT p.product_name, SUM(o.quantity) AS total_sold
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.product_name;

-- Query 5: Total revenue per product
SELECT p.product_name, SUM(o.quantity * p.unit_price) AS total_revenue
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.product_name;

-- Query 6: Orders handled by each Sales Rep
SELECT s.sales_rep_name, COUNT(o.order_id) AS total_orders
FROM Orders o
JOIN SalesReps s ON o.sales_rep_id = s.sales_rep_id
GROUP BY s.sales_rep_name;

-- Query 7: Customers who bought more than 2 items in a single order
SELECT o.order_id, c.customer_name, o.quantity
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
WHERE o.quantity > 2;

-- Query 8: Sort customers alphabetically
SELECT customer_name, customer_city
FROM Customers
ORDER BY customer_name ASC;