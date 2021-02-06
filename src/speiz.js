const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const pgp = require('pg-promise')();
db = pgp('postgres://borzfele:SorosGyuri666@localhost:5432/speiz');
const app = express();

app.use(bodyParser.json());
app.use(cors());

app.get('/shopping-list', async (req, res) => {
  const queryString = "SELECT * FROM shopping_list;";
  db.any(queryString)
    .then((data) => {
      res.status(200).send(data);
    })
    .catch((error) => {
      return res.status(400).send({
        success: false,
        message: 'Error',
        error
      });
    });
});

app.post('/product', (req, res) => {
  if (!req.body) {
    return res.status(400).send({
      success: false,
      message: 'body is needed ya fool'
    });
  } else {
    const queryString = "INSERT INTO shopping_list (product, quantity, measurement_unit) VALUES ($(name), $(quantity), $(measurementUnit));"
    db.none(
      queryString,
      {
        name: req.body.name,
        quantity: req.body.quantity,
        measurementUnit: req.body.measurementUnit
      }
    );
    return res.status(200).send({
      success: true,
      message: 'success'
    });
  }
});

app.post('/finish', (req, res) => {
  if (!req.body) {
    return res.status(400).send({
      success: false,
      message: 'body is needed ya fool'
    });
  } else {
    req.body.forEach(productId => {
      const queryString = `
      DELETE FROM shopping_list
      WHERE id = $(id)
      `;

      db.none(
        queryString,
        {
          id: productId
        }
      );
    });
    return res.status(200).send({
      success: true,
      message: 'success'
    });
  }
});

app.listen(3000, () => {
  console.log('Im up yo!');
});