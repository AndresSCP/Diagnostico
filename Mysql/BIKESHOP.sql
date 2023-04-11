/*CREAR DATABASE M5_ABPRO_5;*/
DROP DATABASE IF EXISTS BikeShop;
CREATE DATABASE BikeShop;

/*USAR TABLA M5_ABPRO_4*/
USE BikeShop;

CREATE TABLE customers(
	customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
    phone VARCHAR(45),
    email VARCHAR(45),
    street VARCHAR(45),
    city VARCHAR(45),
    state VARCHAR(45),
    zip_code INT
);

CREATE TABLE orders(
	order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_status INT,
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    store_id INT,
    staff_id INT
);


CREATE TABLE staffs(
	staff_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(45),
	last_name VARCHAR(45),
    email VARCHAR(45),
    phone VARCHAR(45),
    active VARCHAR(45),
    store_id INT, 
    manager_id INT
);

CREATE TABLE stores(
	store_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(45),
    phone VARCHAR(45),
    email VARCHAR(45),
    street VARCHAR(45),
    city VARCHAR(45),
    state VARCHAR(45),
    zip_code VARCHAR(45)
);

CREATE TABLE order_items(
	order_id INT NOT NULL, 
    item_id INT NOT NULL PRIMARY KEY, 
    product_id INT,
    quantity INT,
    list_price INT,
    discount INT
);

ALTER TABLE order_items
ADD COLUMN store_id INT,
ADD FOREIGN KEY (store_id) REFERENCES stores(store_id);

CREATE TABLE categories(
	category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(45)
);

CREATE TABLE products(
	product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(45),
    brand_id INT,
    category_id INT, 
    model_year INT,
    list_price INT
);

CREATE TABLE stocks(
	store_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT
);

CREATE TABLE brands(
	brand_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(45)
);

