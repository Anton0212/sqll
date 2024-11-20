CREATE TABLE product(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    price FLOAT,
    quantity INT,
    PRIMARY KEY (id)
);

CREATE TABLE customer(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    PRIMARY KEY (id)
)

CREATE Table customer_order(
    id INT GENERATED ALWAYS AS IDENTITY,
    order_date DATE,
    customer_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customer(id)
);


CREATE Table order_product(
    product_id INT,
    order_id INT,
    quantity_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (order_id) REFERENCES customer_order(id),
    PRIMARY KEY (product_id, order_id)
);


INSERT INTO product (name, price, quantity) VALUES ('Iphone', 500, 100);
INSERT INTO product (name, price, quantity) VALUES ('Headphones', 200, 100);
INSERT INTO product (name, price, quantity) VALUES ('Coffeemaker', 125, 300);
INSERT INTO product (name, price, quantity) VALUES ('Samsung phone', 700, 100);
INSERT INTO product (name, price, quantity) VALUES ('Iphone charger', 50, 100);