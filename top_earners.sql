/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/


WITH EMP_SAL AS (
    SELECT salary * months AS sal FROM Employee
)
SELECT MAX(sal) || ' ' || COUNT(*) FROM EMP_SAL
WHERE sal = (SELECT MAX(sal) FROM EMP_SAL);
