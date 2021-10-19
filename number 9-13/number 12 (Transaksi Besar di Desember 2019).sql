-- Transaksi Besar di Desember 2019
SELECT nama_user AS nama_pembeli, total AS nilai_transaksi, created_at AS tanggal_transaksi
FROM orders
INNER JOIN users ON buyer_id = user_id
WHERE created_at >= '2019-12-01' AND created_at < '2020-01-01' AND total >= 20000000
ORDER BY 1