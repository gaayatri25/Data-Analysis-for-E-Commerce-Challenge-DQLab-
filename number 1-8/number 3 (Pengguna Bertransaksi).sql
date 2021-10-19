-- Ada 17,877 pengguna yang pernah bertransaksi sebagai pembeli:
SELECT COUNT(DISTINCT buyer_id)
FROM orders


-- Ada 69 pengguna yang pernah bertransaksi sebagai penjual:
SELECT COUNT(DISTINCT seller_id)
FROM orders


-- Ada 69 pengguna yang pernah bertransaksi sebagai pembeli dan pernah sebagai penjual:
SELECT COUNT(DISTINCT seller_id) AS pembeli_penjual
FROM orders
WHERE seller_id IN (SELECT buyer_id FROM orders);


-- Ada 59 pengguna yang tidak pernah bertransaksi sebagai pembeli maupun penjual:
SELECT COUNT(DISTINCT user_id) AS pengguna_tidak_pernah_transfer FROM users
WHERE user_id NOT IN (SELECT buyer_id FROM orders)
AND user_id NOT IN (SELECT seller_id FROM orders)