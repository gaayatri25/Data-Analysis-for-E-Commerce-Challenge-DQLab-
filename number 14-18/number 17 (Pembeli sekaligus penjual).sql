SELECT nama_user AS nama_pengguna, jumlah_transaksi_beli, jumlah_transaksi_jual
FROM users
INNER JOIN (
  SELECT buyer_id, COUNT(1) AS jumlah_transaksi_beli
  FROM orders
  GROUP BY 1
 ) AS buyer ON buyer_id = user_id
INNER JOIN (
  SELECT seller_id, COUNT(1) AS jumlah_transaksi_jual
  FROM orders
  GROUP BY 1
 ) AS seller ON seller_id = user_id
WHERE jumlah_transaksi_beli >= 7