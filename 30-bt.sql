-- Better solution

SELECT point, date, SUM(out), SUM(inc)
FROM (
    SELECT point, date, null, inc
    FROM income
    UNION
    SELECT point, date, out, null
    FROM outcome
)
GROUP BY point, date

-- Another Solution
WITH SB(point, date, out, inc) AS (
    SELECT point, date, null, inc
        FROM income
        UNION ALL
        SELECT point, date, out, null
        FROM outcome
)

SELECT point, date, SUM(out) as Outcome, SUM(inc) as Income
FROM SB
GROUP BY point, date
