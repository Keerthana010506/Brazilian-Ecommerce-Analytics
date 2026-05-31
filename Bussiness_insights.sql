#Revenue by state

SELECT c.customer_state,
       ROUND(SUM(p.payment_value),2) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
JOIN payments p
ON o.order_id=p.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;
#Revenue by Payment Type

SELECT payment_type,
       ROUND(SUM(payment_value),2) AS revenue
FROM payments
GROUP BY payment_type
ORDER BY revenue DESC;
#Top Product Categories

SELECT p.product_category_name,
       ROUND(SUM(oi.price),2) AS revenue
FROM products p
JOIN order_items oi
ON p.product_id=oi.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC;
#Monthly Revenue Trend

SELECT DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS month,
       ROUND(SUM(p.payment_value),2) AS revenue
FROM orders o
JOIN payments p
ON o.order_id=p.order_id
GROUP BY month
ORDER BY month;