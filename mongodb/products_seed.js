use('shop');

const products = [
  {
    name: 'Wireless Mouse',
    category: 'Electronics',
    price: 29.99,
    stock: 120,
    tags: ['accessories', 'computer'],
    ratings: [4.5, 4.8, 4.2]
  },
  {
    name: 'USB-C Hub',
    category: 'Electronics',
    price: 89.5,
    stock: 60,
    tags: ['accessories', 'connectivity'],
    ratings: [4.1, 4.3, 4.6]
  },
  {
    name: 'Mechanical Keyboard',
    category: 'Electronics',
    price: 129.99,
    stock: 40,
    tags: ['peripherals', 'typing'],
    ratings: [4.7, 4.9, 4.4]
  },
  {
    name: 'Ceramic Vase',
    category: 'Home',
    price: 45.0,
    stock: 25,
    tags: ['decor', 'living-room'],
    ratings: [4.0, 4.2, 4.1]
  },
  {
    name: 'Notebook Set',
    category: 'Books',
    price: 14.99,
    stock: 200,
    tags: ['stationery', 'learning'],
    ratings: [4.3, 4.5, 4.6]
  }
];

db.products.insertMany(products);
print('Inserted products into the shop database.');
