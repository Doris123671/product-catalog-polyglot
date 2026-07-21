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

Returned documents:

```json
[
  { "name": "Wireless Mouse", "price": 29.99 },
  { "name": "USB-C Hub", "price": 89.5 },
  { "name": "Mechanical Keyboard", "price": 129.99 }
]
```

## Part C: Aggregation pipeline results

The pipeline unwound the ratings arrays and grouped by category to calculate the average rating and count of ratings.

```json
[
  {
    "_id": "Electronics",
    "averageRating": 4.5,
    "ratingCount": 9
  },
  {
    "_id": "Books",
    "averageRating": 4.47,
    "ratingCount": 3
  },
  {
    "_id": "Home",
    "averageRating": 4.1,
    "ratingCount": 3
  }
]
```
