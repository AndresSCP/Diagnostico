INSERT INTO customers (first_name, last_name, phone, email, street, city, state, zip_code) Value
('ramon','gonzales','','rgonza@hotmail.com','calleNy 12312','Nueva York', 'NY', '12312'),
('juan','smith','3123123','rgonza@hotmail.com','calleNy 128912','Nueva York', 'NY', '14312'),
('daniel','guiterrez','3123123','rgonza@hotmail.com','calleLA 12312','Los Angeles', 'CA', '12612'),
('ruben','contreras','','rCCC@yahoo.com','calleTX 12312','Austin', 'TX', '12234'),
('Maria', 'Garcia', '5551234', 'mgarcia@gmail.com', 'Calle Principal 123', 'Madrid', 'M', '28001'),
('David', 'Lopez', '', 'dlopez@yahoo.com', '1234 Elm St', 'Los Angeles', 'CA', '90001'),
('Ana', 'Perez', '5555678', 'aperez@yahoo.com', 'Rua Principal 123', 'Nueva York', 'NY', '1234');

SELECT * from customers;

/*Query que selecciona clientes por estado (state) y luego los ordena por apellido y luego por nombre*/
SELECT * FROM customers
WHERE state = 'NY'
ORDER BY last_name, first_name;


/*Query que selecciona clientes que tengan correo yahoo y luego los ordena por apellido y luego por nombre*/
SELECT * FROM customers
WHERE email LIKE '%@yahoo.%' AND phone IS NULL
ORDER BY last_name, first_name;

INSERT INTO stores (store_name, phone, email, street, city, state, zip_code)
VALUES 
('Store1', '1234', 'store1@mail.com', '123 calle 1', 'New York', 'NY', '10001'),
('Store2', '5678', 'store2@mail.com', '456 calle 2', 'Los Angeles', 'CA', '90001'),
('Store3', '9012', 'store3@mail.com', '789 calle 3', 'Chicago', 'IL', '60601');

SELECT * from stores;

INSERT INTO order_items (order_id, item_id, product_id, quantity, list_price, discount,store_id)
VALUES
(1, 1, 100, 20, 50, 10, 1),
(2, 2, 200, 55, 75, 15, 2),
(3, 3, 100, 105, 50, 5, 3);

select * from order_items;

/*Query que reporta cantidad de órdenes totales de cada tienda, ordenado de mayor a menor cantidad.*/
SELECT stores.store_id, stores.store_name, SUM(order_items.quantity) AS total_quantity
FROM stores
JOIN order_items ON stores.store_id = order_items.store_id
GROUP BY stores.store_id
ORDER BY total_quantity DESC;








