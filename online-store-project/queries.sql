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
ORDER BY total DESC;











