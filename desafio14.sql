SELECT c.Country "País" FROM w3schools.customers AS c
WHERE NOT EXISTS (SELECT * FROM w3schools.suppliers AS s WHERE c.Country = s.Country)
GROUP BY c.Country
ORDER BY c.Country
LIMIT 5;