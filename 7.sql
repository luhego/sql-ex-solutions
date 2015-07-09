-- Find out the models and prices for all the products (of any type) produced by maker B.

SELECT a.model, a.price
FROM (
    SELECT model, price
    FROM pc
    UNION
    SELECT model, price
    FROM laptop
    UNION
    SELECT model, price
    FROM printer
) AS a JOIN product p ON a.model = p.model
WHERE p.maker = 'B'