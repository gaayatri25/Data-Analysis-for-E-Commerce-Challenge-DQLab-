-- Top 5 produk yang dibeli di bulan desember 2019 berdasarkan total quantity:
SELECT SUM(quantity) AS total_quantity,desc_product
FROM order_details 
INNER JOIN products ON order_details.product_id = products.product_id
INNER JOIN orders ON order_details.order_id = orders.order_id
WHERE created_at BETWEEN '2019-12-01' AND '2019-12-31'
GROUP BY 2
ORDER BY 1 DESC
LIMIT 5