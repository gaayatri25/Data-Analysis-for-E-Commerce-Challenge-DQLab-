-- Pengguna yang tidak pernah menggunakan diskon ketika membeli barang dan merupakan 5 pembeli dengan transaksi terbanyak:
SELECT user_id, nama_user, COUNT(order_id) AS jumlah_transaksi
FROM users
INNER JOIN orders ON user_id = buyer_id
WHERE discount=0
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 5