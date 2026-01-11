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

INSERT INTO orders VALUES
(1),
(2),
(1);

INSERT INTO items_orders (orders_id, products_id, quantity, price_unity) VALUES
(1, 1, 2, 15.99),  -- 2 ratos
(1, 2, 1, 29.99),  -- 1 teclado
(2, 3, 1, 149.99), -- 1 monitor
(3, 4, 2, 49.99);  -- 2 headphones





