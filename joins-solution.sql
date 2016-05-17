--1 Get all customers and their addresses.
SELECT * FROM customers
	JOIN addresses ON customers.id = addresses.customer_id;
--2 Get all orders and their line items.
SELECT * FROM orders
	JOIN line_items ON orders.id = line_items.order_id;
--3 Which warehouses have cheetos?
SELECT * FROM warehouse
	JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
	JOIN products ON warehouse_product.product_id = products.id
	WHERE products.id = 5;
--4 Which warehouses have diet pepsi?
SELECT * FROM warehouse
	JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
	JOIN products ON warehouse_product.product_id = products.id
	WHERE products.id = 6;
--5 Get the number of orders for each customer. note...
SELECT * FROM customers
	JOIN addresses ON addresses.customer_id = customers.id
	JOIN orders ON orders.address_id = addresses.id;
--6 How many customers do we have?
SELECT COUNT(*) FROM customers;
--7 How many products do we carry?
SELECT COUNT(*) FROM products;
--8 What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand) FROM products
	JOIN warehouse_product ON warehouse_product.product_id = products.id
	JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
	where products.id = 6;
