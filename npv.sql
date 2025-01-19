SELECT q.id, q.year, COALESCE(n.npv,0) AS npv FROM NPV AS n
RIGHT JOIN Queries AS q 
ON n.id = q.id AND n.year = q.year;