DROP TABLE IF EXISTS shopping_list CASCADE;

CREATE TABLE shopping_list (
  id SERIAL PRIMARY KEY NOT NULL,
  product VARCHAR(100) NOT NULL,
  quantity VARCHAR(3) NOT NULL,
  measurement_unit VARCHAR(50) NOT NULL
);

/*
DROP TABLE IF EXISTS product CASCADE;
DROP TABLE IF EXISTS measurement_unit CASCADE;
DROP TABLE IF EXISTS stock CASCADE;

CREATE TABLE product (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(50),
  expiration_interval_in_days SMALLINT DEFAULT 10
);


CREATE TABLE measurement_unit (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE shopping_list (
  id SERIAL PRIMARY KEY NOT NULL,
  product_id SMALLINT NOT NULL,
  quantity SMALLINT NOT NULL,
  measurement_unit_id SMALLINT NOT NULL
);

CREATE TABLE shopping_list (
  id SERIAL PRIMARY KEY NOT NULL,
  product VARCHAR(100) NOT NULL,
  quantity VARCHAR(3) NOT NULL,
  measurement_unit VARCHAR(50) NOT NULL
);

ALTER TABLE shopping_list ADD FOREIGN KEY (product_id)
REFERENCES product(id) ON DELETE CASCADE;
ALTER TABLE shopping_list ADD FOREIGN KEY (measurement_unit_id)
REFERENCES measurement_unit(id) ON DELETE CASCADE;

INSERT INTO measurement_unit (name) VALUES ('kg');
INSERT INTO measurement_unit (name) VALUES ('db');
INSERT INTO measurement_unit (name) VALUES ('l');
INSERT INTO measurement_unit (name) VALUES ('dkg');
INSERT INTO measurement_unit (name) VALUES ('csomag');

INSERT INTO product (name, expiration_interval_in_days) VALUES ('paradicsom', 15);
INSERT INTO product (name) VALUES ('Zala felvágott');
INSERT INTO product (name, expiration_interval_in_days) VALUES ('krumpli', 20);

INSERT INTO shopping_list (product_id, quantity, measurement_unit_id) VALUES (1, 3, 2);
INSERT INTO shopping_list (product_id, quantity, measurement_unit_id) VALUES (2, 20, 4);
INSERT INTO shopping_list (product_id, quantity, measurement_unit_id) VALUES (3, 3, 1);

SELECT * FROM measurement_unit;
SELECT * FROM product;

SELECT shopping_list.quantity, product.name as product, measurement_unit.name as measurement_unit FROM shopping_list
INNER JOIN product
ON product.id = shopping_list.product_id
INNER JOIN measurement_unit
ON measurement_unit.id = shopping_list.measurement_unit_id;
*/