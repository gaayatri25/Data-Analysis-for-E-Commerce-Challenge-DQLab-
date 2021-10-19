-- Terdapat 5046 transaksi yang tidak dibayar: 
SELECT COUNT(paid_at)
FROM orders
WHERE paid_at='NA'

-- Terdapat 9790 transaksi yang tidak dikirim, baik sudah dibayar maupun belum:
SELECT COUNT(delivery_at)
FROM orders
WHERE delivery_at='NA'