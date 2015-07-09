-- Define the average price of the PCs and laptops produced by maker A.
-- Result set: single total price.

SELECT AVG(price)
FROM (
    SELECT price, model
    FROM pc
    UNION ALL
    SELECT price, model
    FROM laptop
) p
WHERE p.model IN (SELECT model FROM product WHERE maker = 'A')

