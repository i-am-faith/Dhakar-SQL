/* Write your PL/SQL query statement below */
SELECT e.employee_id FROM Employees e
LEFT JOIN Employees m ON e.manager_id = m.employee_id
WHERE e.salary < 30000 AND e.manager_id IS NOT NULL AND m.employee_id IS NULL
ORDER BY employee_id ASC;


/*
Why are we using e.manager_id IS NOT NULL?
We are using e.manager_id IS NOT NULL because once the manager stayed at the company but recently he left the company so we have to keep track of employee's manager_id and also check manager_id is still in the DB or not
*/