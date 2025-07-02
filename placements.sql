/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT s.Name FROM Friends f
JOIN Students s ON f.ID = s.ID
JOIN Packages p ON f.ID = p.ID
JOIN Packages p2 ON f.Friend_ID = p2.ID
WHERE p2.Salary > p.Salary
ORDER BY p2.Salary ASC;