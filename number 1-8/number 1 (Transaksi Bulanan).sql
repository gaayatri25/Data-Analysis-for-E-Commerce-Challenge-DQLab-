-- Terdapat 4327 transaksi di bulan September 2019:
SELECT COUNT(paid_at)
FROM orders
WHERE created_at>='2019-09-01' AND created_at<'2019-10-01' 


-- Terdapat 5062 transaksi di bulan Januari 2020:
SELECT COUNT(paid_at)
FROM orders
WHERE created_at>='2020-01-01' AND created_at<'2020-02-01' 


-- Terdapat 7323 transaksi di bulan Maret 2020:
SELECT COUNT(paid_at)
FROM orders
WHERE created_at>='2020-03-01' AND created_at<'2020-04-01' 


-- Terdapat 10026 transaksi di bulan Mei 2020:
SELECT COUNT(paid_at)
FROM orders
WHERE created_at>='2020-05-01' AND created_at<'2020-06-01' 