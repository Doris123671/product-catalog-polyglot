CREATE DATABASE IF NOT EXISTS lab3_db;
USE lab3_db;

CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(150) NOT NULL,
  category VARCHAR(80),
  price DECIMAL(10,2),
  stock_quantity INT DEFAULT 0,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (product_name, category, price, stock_quantity) VALUES
('Wireless Mouse', 'Electronics', 24.99, 50),
('Ergonomic Chair', 'Furniture', 149.50, 15),
('Coffee Maker', 'Home Appliances', 59.99, 20),
('Notebook Set', 'Office Supplies', 8.75, 100),
('Mechanical Keyboard', 'Electronics', 89.99, 30),
('Desk Lamp', 'Home Appliances', 34.50, 45);
