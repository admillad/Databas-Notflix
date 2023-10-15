CREATE DATABASE WebShop;
USE WebShop;

CREATE TABLE products(	product_id INTEGER NOT NULL, product_name VARCHAR(55) NOT NULL,	description VARCHAR(55) NOT NULL,	price INTEGER NOT NULL,
 CONSTRAINT PK_product PRIMARY KEY (product_id));
CREATE TABLE customers(	customer_id INTEGER NOT NULL, customer_name VARCHAR(55) NOT NULL, customer_email VARCHAR(55) NOT NULL, customer_adress VARCHAR(55) NOT NULL, 
CONSTRAINT PK_customer PRIMARY KEY (customer_id));
CREATE TABLE orders( order_id INTEGER  NOT NULL,  customer_id INTEGER NOT NULL , order_date DATE NOT NULL, 
CONSTRAINT PK_order PRIMARY KEY (order_id), FOREIGN KEY (customer_id) REFERENCES customers(customer_id));
CREATE TABLE order_details(	order_detail_id INTEGER NOT NULL,	customer_id INTEGER NOT NULL,	product_id INTEGER NOT NULL, quantity INTEGER NOT NULL, 
FOREIGN KEY (customer_id) REFERENCES customers (customer_id));
CREATE TABLE payments( payment_id INTEGER NOT NULL, order_id INTEGER NOT NULL,	amount INTEGER NOT NULL, payment_method VARCHAR(55) NOT NULL, 
FOREIGN KEY (order_id) REFERENCES orders(order_id));

INSERT INTO products (product_id, product_name, description, price) VALUES (1,'t-shirt', 'oversized','199');
INSERT INTO products (product_id, product_name, description, price) VALUES (2, 'jeans', 'fitted', '249');
INSERT INTO products (product_id, product_name, description, price) VALUES (3, 'hats', 'red', '99');
INSERT INTO products (product_id, product_name, description, price) VALUES (4, 'bags', 'handbags', '149');

INSERT INTO customers (customer_id, customer_name, customer_email, customer_adress) VALUES ( 55, 'Lina Gustavson', 'lina_gustavsson@yahoo.com', 'Beckvägen 88');
INSERT INTO customers (customer_id, customer_name, customer_email, customer_adress) VALUES ( 96, 'Emma Pettersson', 'emmapemma@hotmail.com', 'Bastugränd 78');
INSERT INTO customers (customer_id, customer_name, customer_email, customer_adress) VALUES ( 08, 'Björn Wallgren', 'bjorn@gmail.com', 'Söndagsvägen 11');
INSERT INTO customers (customer_id, customer_name, customer_email, customer_adress) VALUES ( 38, 'Pelle Pålsson', 'ppall@telia.com', 'Häradgatan 3');
INSERT INTO customers (customer_id, customer_name, customer_email, customer_adress) VALUES ( 17, 'Thomas Stjärna', 'tommyboy@yahoo.com', 'Pelargonstigen 7');

INSERT INTO orders (order_id, customer_id, order_date) VALUES ('1','55', '2022-02-20');
INSERT INTO orders (order_id, customer_id, order_date) VALUES ('2', '08', '2023-03-01');
INSERT INTO orders (order_id, customer_id, order_date) VALUES ('3', '17', '2020-01-01');

INSERT INTO order_details (order_detail_id, customer_id, product_id, quantity) VALUES ( 1234, 55, 1, 2);
INSERT INTO order_details (order_detail_id, customer_id, product_id, quantity) VALUES (2345, 08, 4, 1);
INSERT INTO order_details (order_detail_id, customer_id, product_id, quantity) VALUES (3456, 17, 2, 3);

INSERT INTO payments (payment_id, order_id, amount, payment_method) VALUES (1122, 1, 398, 'cash');
INSERT INTO payments (payment_id, order_id, amount, payment_method) VALUES (2233, 2, 149, 'card');
INSERT INTO payments (payment_id, order_id, amount, payment_method) VALUES (3344, 3, 747, 'swish');

ALTER TABLE order_details ADD  CONSTRAINT FK_products FOREIGN KEY(product_id)
REFERENCES products (product_id);