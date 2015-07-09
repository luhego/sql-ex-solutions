-- Find the makers of the cheapest color printers.
-- Result set: maker, price.

SELECT DISTINCT pro.maker, pri.price
FROM product pro
INNER JOIN printer pri on pro.model = pri.model
WHERE color='y' AND pri.price = (SELECT MIN(price) FROM printer WHERE color='y')
