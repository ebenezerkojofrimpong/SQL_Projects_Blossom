-- Creating customers table --
CREATE TABLE customers (id INTEGER AUTO_INCREMENT PRIMARY KEY, name TEXT, email TEXT);
INSERT INTO customers (name, email) VALUES ("Doctor Who", "doctorwho@timelords.com");
INSERT INTO customers (name, email) VALUES ("Harry Potter", "harry@potter.com");
INSERT INTO customers (name, email) VALUES ("Captain Awesome", "captain@awesome.com");

-- Creating orders table --
CREATE TABLE orders (id INTEGER AUTO_INCREMENT PRIMARY KEY,customer_id INTEGER,item TEXT,price REAL);
INSERT INTO orders (customer_id, item, price)
 VALUES (1, "Sonic Screwdriver", 1000.00);
INSERT INTO orders (customer_id, item, price)
 VALUES (2, "High Quality Broomstick", 40.00);
INSERT INTO orders (customer_id, item, price)
 VALUES (1, "TARDIS", 1000000.00);
 
 
 -- Querying --
 SELECT customers.name, customers.email, orders.item, orders.price
 FROM customers
 LEFT OUTER JOIN orders
 ON customers.id = orders.customer_id;
 
 
 -- Querying --
 SELECT customers.name, customers.email, SUM(orders.price) AS total_price
 FROM customers
 LEFT OUTER JOIN orders
 ON customers.id = orders.customer_id
GROUP BY customers.name, customers.email
ORDER BY total_price DESC;


