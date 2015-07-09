-- Define the average price of the PCs and laptops produced by maker A.
-- Result set: single total price.

SELECT AVG(SQ.price)
FROM (
    SELECT price
    FROM pc
    INNER JOIN product p ON pc.model = p.model
    WHERE p.maker = 'A'
    UNION ALL
    SELECT price
    FROM laptop l
    INNER JOIN product p ON l.model = p.model
    WHERE p.maker = 'A'
) SQ
