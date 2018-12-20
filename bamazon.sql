CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(
	item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(200) NULL,
    department_name VARCHAR(200) NULL,
    price INT NULL,
    stock_quantity INT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Mountain Dew", "Food/Beverage", 0.99, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Doritios", "Food/Beverage", 0.75, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Graphic T-Shirt", "Apperal", 49.99, 9);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Playstation 4", "Electronics", 300.00, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Rubber Duck", "Toys", 0.50, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Star Wars Robe", "Apperal", 35.97, 74);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Flip Flops", "Footwear", 9.99, 35);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("LONDONPARIS on Vinyl", "Music", 9.99, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Drone", "Electronics", 349.99, 7);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Razor Scooter", "Toys", 49.99, 13);




SELECT * FROM products