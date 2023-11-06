SELECT orders.order_id, products.name, order_items.quantity, (order_items.quantity * order_items.unit_price) as Total FROM orders 
LEFT JOIN order_items ON orders.order_id = order_items.order_id 
LEFT JOIN products ON order_items.product_id = products.product_id 
ORDER BY orders.order_id ASC