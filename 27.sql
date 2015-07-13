-- Define the average size of the PC hard drive for each maker that also produces printers.
-- Result set: maker, average capacity of HD.

SELECT p.maker, AVG(hd)
FROM pc
INNER JOIN product p ON pc.model = p.model
WHERE p.maker IN (SELECT maker FROM product WHERE type = 'Printer')
GROUP BY maker
