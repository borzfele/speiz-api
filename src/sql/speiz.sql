DROP TABLE IF EXISTS shopping_list CASCADE;
DROP TABLE IF EXISTS status CASCADE;

CREATE TABLE status (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE shopping_list (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(100) NOT NULL,
  creation TIMESTAMP NOT NULL DEFAULT NOW(),
  user_id INTEGER NOT NULL DEFAULT 1,
  status_id INTEGER NOT NULL,
  CONSTRAINT fk_shopping_list_status_id 
  FOREIGN KEY(status_id) 
  REFERENCES status(id)
  ON DELETE CASCADE
);

INSERT INTO status (name) VALUES ('IN PROGRESS');
INSERT INTO status (name) VALUES ('DRAFT');
INSERT INTO status (name) VALUES ('COMPLETED');

INSERT INTO shopping_list (name, status_id) VALUES ('Cuki szülinap', 1);

SELECT * FROM status;
SELECT * FROM shopping_list;