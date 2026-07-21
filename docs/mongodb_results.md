# MongoDB Results

## Part B: Filtered product query

Query used:

```javascript
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
```

Expected result:

```json
[
  { "name": "Wireless Mouse", "price": 29.99 },
  { "name": "USB-C Hub", "price": 89.5 },
  { "name": "Mechanical Keyboard", "price": 129.99 }
]
```

## Part C: Aggregation pipeline results

```json
[
  {
    "_id": "Electronics",
    "averageRating": 4.5,
    "ratingCount": 3
  }
]
```
