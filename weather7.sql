/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT DISTINCT city FROM STATION
WHERE UPPER(CITY) LIKE '%A' OR UPPER(CITY) LIKE '%E' OR UPPER(CITY) LIKE '%I' OR UPPER(CITY) LIKE '%O' OR UPPER(CITY) LIKE '%U';