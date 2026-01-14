INSERT INTO clients (name, email) VALUES
('Ana Silva', 'ana.silva@gmail.com'),
('João Costa', 'joao.costa@gmail.com'),
('Maria Fernandes', 'maria.fernandes@gmail.com'),
('Pedro Rocha', 'pedro.rocha@gmail.com');

INSERT INTO products (name,preco,stock) VALUES
('Rato', 15.99,50),
('Teclado', 29.99,30),
('Monitor', 149.99,10),
('Headphones', 49.99,25);

INSERT INTO orders(client_id) VALUES
(1),
(2),
(1),
(3),
(2),
(4);

INSERT INTO items_orders (order_id, product_id, quantity, unity_price) VALUES
(1, 1, 2, 15.99),  -- 2 mouse
(1, 2, 1, 29.99),  -- 1 keyboard
(2, 3, 1, 149.99), -- 1 screen
(3, 4, 2, 49.99),  -- 2 headphones
(2, 3, 2, 149.99); -- 2 screens





