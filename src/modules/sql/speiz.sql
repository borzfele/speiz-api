DROP TABLE IF EXISTS shopping_list CASCADE;

CREATE TABLE shopping_list (
  id SERIAL PRIMARY KEY NOT NULL,
  product VARCHAR(100) NOT NULL,
  quantity VARCHAR(3) NOT NULL,
  measurement_unit VARCHAR(50) NOT NULL
);

shopping-list
  id
  name
  creation_date
  status

product
  id
  name

shopping-list-item
  shopping-list-id
  product-id
  quantity
  measurement_unit