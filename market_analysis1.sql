WITH ORDER2019 AS 
(
    SELECT buyer_id, COUNT(order_id) AS orders FROM Orders
    WHERE TO_CHAR(order_date,'YYYY') = '2019'
    GROUP BY buyer_id
)

SELECT u.user_id AS buyer_id , TO_CHAR(u.join_date,'YYYY-MM-DD') AS join_date, COALESCE(o.orders,0) AS orders_in_2019 FROM Users u
LEFT JOIN ORDER2019 o ON u.user_id = o.buyer_id
ORDER BY o.buyer_id ASC;