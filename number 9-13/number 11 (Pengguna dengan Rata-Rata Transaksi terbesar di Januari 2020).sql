-- 10 pembeli dengan rata-rata nilai transaksi terbesar yang bertransaksi minimal 2 kali di Januari 2020:
SELECT buyer_id, COUNT(1) AS jumlah_transaksi, AVG(total) AS avg_nilai_transaksi
FROM orders
WHERE created_at >= '2020-01-01' AND created_at < '2020-02-01'
GROUP BY 1
HAVING COUNT(1) >=  2 
ORDER BY 3 DESC
LIMIT 10