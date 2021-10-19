-- Pengguna yang bertransaksi setidaknya 1 kali setiap bulan di tahun 2020 dengan rata-rata total amount per transaksi lebih dari 1 Juta:
SELECT buyer_id, email, rata_rata, perhitungan_bulan
FROM ( SELECT a.buyer_id, rata_rata, jumlah_order, perhitungan_bulan
 FROM ( SELECT buyer_id, ROUND(AVG(total),2) AS rata_rata
		FROM orders
		WHERE DATE_FORMAT(created_at, '%Y') = '2020'
		GROUP BY 1
		HAVING rata_rata > 1000000
		ORDER BY 1
	   ) AS a
 JOIN ( SELECT buyer_id, COUNT(order_id) AS jumlah_order,
    COUNT(DISTINCT DATE_FORMAT(created_at, '%m')) AS perhitungan_bulan
   FROM orders
   WHERE DATE_FORMAT(created_at, '%Y') = '2020'
   GROUP BY 1
   HAVING perhitungan_bulan >= 5 AND jumlah_order >= perhitungan_bulan
   ORDER BY 1
      ) AS months ON a.buyer_id = months.buyer_id
    ) AS b
JOIN users ON buyer_id = user_id;