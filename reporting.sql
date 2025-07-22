/* Write your PL/SQL query statement below */
SELECT A.employee_id , A.name, COUNT(E.employee_id) AS reports_count , ROUND(AVG(E.age)) AS average_age FROM Employees E 
JOIN Employees A ON E.reports_to = A.employee_id
GROUP BY A.employee_id , A.name
ORDER BY employee_id ASC;
