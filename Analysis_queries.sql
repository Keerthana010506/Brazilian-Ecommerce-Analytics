SELECT ROUND(SUM(payment_value),2) AS total_revenue
FROM payments;
SELECT COUNT(*) AS total_orders
FROM orders;
SELECT COUNT(*) AS total_customers
FROM customers;
SELECT ROUND(AVG(payment_value),2) AS avg_order_value
FROM payments;