

-- Euclidean Distance = RMS( (a-b)^2 + (c-d)^2 )

SELECT ROUND(SQRT(((MIN(LAT_N)-MAX(LAT_N)) * (MIN(LAT_N)-MAX(LAT_N))) + ((MIN(LONG_W)-MAX(LONG_W)) * (MIN(LONG_W)-MAX(LONG_W)))),4) FROM STATION;