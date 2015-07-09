-- Find out the makers that sell PCs but not laptops.

SELECT DISTINCT maker
FROM product p1
WHERE NOT EXISTS
    (SELECT *
     FROM product p2
     WHERE p2.type = 'Laptop' AND p1.maker = p2.maker)
AND p1.type = 'PC'
