-- Rata-rata lama waktu dari transaksi dibuat sampai dibayar, dikelompokkan per bulan:
SELECT EXTRACT(YEAR_MONTH FROM created_at) AS tahun_bulan, COUNT(1) AS jumlah_transaksi, 
AVG(DATEDIFF(paid_at, created_at)) AS avg_lama_dibayar, MIN(DATEDIFF(paid_at, created_at)) min_lama_dibayar,
MAX(DATEDIFF(paid_at, created_at)) max_lama_dibayar
FROM orders
WHERE paid_at is NOT NULL
GROUP BY 1
ORDER BY 1