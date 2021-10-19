-- 10 transaksi dari pembelian dari pengguna dengan user_id 12476:
SELECT seller_id, buyer_id, total AS nilai_transaksi, created_at AS tanggal_transaksi
FROM orders
WHERE buyer_id = 12476
ORDER BY 3 DESC
LIMIT 10