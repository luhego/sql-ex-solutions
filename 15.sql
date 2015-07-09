-- Find the hard drive sizes that are equal among two or more PCs.
-- Result set: hd.

SELECT hd FROM pc
GROUP BY hd
HAVING COUNT(*) > 1
