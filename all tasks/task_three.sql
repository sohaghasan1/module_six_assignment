SELECT categories.name, SUM(order_items.quantity * order_items.unit_price) as Total FROM categories
LEFT JOIN products ON products.product_id = categories.category_id 
LEFT JOIN order_items ON products.product_id = order_items.product_id
GROUP BY categories.category_id ORDER BY Total DESC 