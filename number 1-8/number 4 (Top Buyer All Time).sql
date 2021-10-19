-- Lima pembeli dengan total pembelian terbesar (berdasarkan total harga barang setelah diskon):
SELECT user_id, nama_user, SUM(total) AS total_transaksi
FROM users
INNER JOIN orders ON user_id = buyer_id
GROUP BY 1,2
ORDER BY 3 DESC
LIMIT 5