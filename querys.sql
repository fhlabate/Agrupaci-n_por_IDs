#¿De que ciudad proviene la mayor cantidad de ventas?
SELECT city, sum(amount) AS total_amount_$
FROM sales s
JOIN users u
ON s.user_id = u.user_id
JOIN locations l
ON l.location_id = u.location_id
GROUP BY city
ORDER BY total_amount_$ DESC;

#¿De que ciudad proviene la mayor cantidad de ventas?
#Agrupado por location_id 🔍
SELECT l.location_id, city, sum(amount) AS total_amount_$
FROM sales s
JOIN users u
ON s.user_id = u.user_id
JOIN locations l
ON l.location_id = u.location_id
GROUP BY l.location_id
ORDER BY total_amount_$ DESC;

#¿De que ciudad proviene la mayor cantidad de ventas?
#Detalle del país al que pertenece cada ciudad
SELECT l.location_id, city, country, sum(amount) AS total_amount_$
FROM sales s
JOIN users u
ON s.user_id = u.user_id
JOIN locations l
ON l.location_id = u.location_id
GROUP BY l.location_id
ORDER BY total_amount_$ DESC;




