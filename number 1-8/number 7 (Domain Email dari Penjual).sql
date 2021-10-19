SELECT DISTINCT SUBSTR(email, INSTR(email, '@') + 1) AS email_domain, 
COUNT(user_id) AS count_pengguna_seller
FROM users
WHERE user_id IN (SELECT seller_id FROM orders)
GROUP BY 1
ORDER BY 2 DESC;