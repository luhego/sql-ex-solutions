-- Find the model number of the product (PC, laptop, or printer) with the highest price.
-- Result set: model

WITH MAX_PRICE AS(
    SELECT MAX(SQ.price) AS 'price'
    FROM (
        SELECT price FROM pc
        UNION
        SELECT price FROM laptop
        UNION
        SELECT price FROM printer
    ) AS SQ
)

SELECT SQ1.model
FROM (
    SELECT model, price
    FROM pc
    UNION
    SELECT model, price
    FROM laptop
    UNION
    SELECT model, price
    FROM printer
) SQ1
INNER JOIN MAX_PRICE SQ2 ON SQ1.price = SQ2.price
