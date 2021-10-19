SELECT category, SUM(quantity) AS total_quantity, SUM(price) AS total_price
FROM orders
INNER JOIN order_details USING(order_id)
INNER JOIN products USING(product_id)
WHERE created_at >= '2020-01-01' AND delivery_at IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5