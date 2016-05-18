-- Get all customers and their addresses.
SELECT * FROM customers, addresses
  WHERE  customers.id = customer_id;

-- Get all orders and their line items.
SELECT * FROM orders, line_items
  WHERE  orders.id = order_id;

-- Which warehouses have cheetos?
SELECT * FROM warehouse_product
	WHERE product_id = 5;

-- Which warehouses have diet pepsi?
SELECT * FROM warehouse_product
	WHERE product_id = 6;

-- Get the number of orders for each customer. NOTE: It is OK if those without orders
-- are not included in results.
SELECT first_name, last_name, COUNT(first_name) FROM customers
JOIN addresses ON  customers.id = addresses.customer_id
JOIN orders ON addresses.id = orders.address_id
GROUP BY customers.first_name, customers.last_name;

-- How many customers do we have?
SELECT COUNT(DISTINCT id) AS NumberOfCustomers FROM customers;

-- How many products do we carry?
SELECT COUNT(DISTINCT id) AS NumberOfProducts FROM products;

-- What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand) AS dietPepsiAvailable FROM warehouse_product
	WHERE product_id = 6;
