USE webshop;
#1
SELECT p.product_id as pid, p.product_name as pname, description, price FROM products p;
#2
SELECT product_id, product_name, description, price 
FROM products 
WHERE price >'100' 
ORDER BY price;
#3
SELECT customer_id, customer_name, customer_email, customer_adress FROM customers;
#4
SELECT *  FROM orders;
#5
SELECT order_detail_id, customer_id, product_id, quantity FROM order_details;
#6
SELECT payment_id, order_id, amount, payment_method FROM payments;
#7
SELECT amount, order_date FROM payments INNER JOIN orders ON payments.order_id = orders.order_id;
#8
SELECT p.product_id, p.product_name, od.quantity,p.price * od.quantity AS multiplied_value
FROM products p
JOIN order_details od  ON p.product_id = od.product_id
ORDER BY p.product_id;
#9
SELECT o.order_id, o.order_date, o.customer_id, c.customer_name, c.customer_email, c.customer_adress FROM orders o INNER JOIN customers c ON o.customer_id = c.customer_id ORDER BY order_id;
#10
SELECT o.order_id, o.order_date, o.customer_id, od.order_detail_id, od.product_id, od.quantity FROM orders o INNER JOIN order_details od ON o.customer_id = o.order_id ORDER BY order_id; 
#11
SELECT od.order_detail_id, od.customer_id, od.product_id, od.quantity, c.customer_name, c.customer_email, c.customer_adress, p.product_name, p.description, p.price FROM order_details od 
JOIN customers c ON od.customer_id = c.customer_id 
JOIN products p ON od.product_id = p.product_id;
#12
SELECT * FROM orders WHERE customer_id = '8';
#13
SELECT * FROM orders JOIN products WHERE products.product_id = '2';
#14
SELECT * FROM orders WHERE order_date = '0000-00-00';
#15
SELECT * FROM orders JOIN products WHERE order_date = '0000-00-00' AND product_id = '1'; 
#16
SELECT * FROM customers c JOIN orders o WHERE o.customer_id IS NULL;
#17
SELECT * FROM products p JOIN order_details od WHERE od.product_id IS NULL;
#18
INSERT INTO products (product_id, product_name, description, price) VALUES (5, 'glasses', 'round', 59);
#19
INSERT INTO customers (customer_id, customer_name, customer_email, customer_adress) VALUES (99, 'Rebecca Tanninen', 'rebs@hotmail.com', 'klaragatan 88');
#20
INSERT INTO orders (order_id, customer_id, order_date)
VALUES (07, 99, '2001-01-09');