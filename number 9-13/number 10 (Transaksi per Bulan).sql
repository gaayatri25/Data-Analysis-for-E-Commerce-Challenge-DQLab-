-- Transaksi per bulan di tahun 2020:
SELECT EXTRACT(YEAR_MONTH FROM created_at) AS tahun_bulan, COUNT(1) AS jumlah_transaksi, 
SUM(total) AS total_nilai_transaksi
FROM orders
WHERE created_at >= '2020-01-01'
GROUP BY 1
ORDER BY 1