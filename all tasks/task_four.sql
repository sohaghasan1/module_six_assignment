SELECT customers.name, COUNT(orders.order_id) as quantity , SUM(order_items.quantity * order_items.unit_price) as Total_Purchase_amount FROM customers LEFT JOIN orders ON customers.customer_id = orders.customer_id 
LEFT JOIN order_items ON order_items.order_id = orders.order_id GROUP BY customers.name ORDER BY Total_Purchase_amount DESC LIMIT 5