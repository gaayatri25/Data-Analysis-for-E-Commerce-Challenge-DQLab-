SELECT nama_user AS nama_pembeli, COUNT(1) AS jumlah_transaksi, SUM(total) AS total_nilai_transaksi, AVG(total) AS avg_nilai_transaksi, AVG(total_quantity) AS avg_quantity_per_transaksi
FROM orders INNER JOIN users ON buyer_id = user_id
INNER JOIN (
  SELECT order_id, SUM(quantity) AS total_quantity
  FROM order_details
  GROUP BY 1
 ) AS summary_order USING(order_id)
WHERE orders.kodepos = users.kodepos
GROUP BY user_id, nama_user
HAVING COUNT(1) >= 8 AND AVG(total_quantity) > 10
ORDER BY 3 DESC