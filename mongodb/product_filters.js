use('shop');

const query = {
  category: 'Electronics',
  price: { $lt: 200 }
};

const projection = {
  _id: 0,
  name: 1,
  price: 1
};

const results = db.products.find(query, projection).toArray();

printjson(results);
