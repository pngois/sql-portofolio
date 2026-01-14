SELECT * FROM clients; --Select all the data from the clients table

SELECT name, price, stock FROM products
WHERE stock > 0; --Select products with stock

SELECT * FROM orders; --Select all the data from the orders table

SELECT * FROM items_order
WHERE order_id = 1; --See a specific order

SELECT 
    c.name,
    SUM(i.quantity * i.unity_price) AS total
FROM clients c
JOIN orders e ON c.id = e.client_id
JOIN items_orders i ON e.id = i.order_id
GROUP BY c.name
ORDER BY total DESC; --See all the total expenses per client

Select * from clients
where month(date_regist) = month(current_date())
and year(date_regist) = year(current_date()); --See all the clients regist from this month

SELECT c.name,count(o.id) as total_orders
FROM clients c
JOIN orders o ON c.id = o.client_id
GROUP BY c.name; --Total orders per client









