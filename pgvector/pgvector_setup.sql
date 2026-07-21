CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE IF NOT EXISTS product_vectors (
    id SERIAL PRIMARY KEY,
    product_name TEXT NOT NULL,
    embedding vector(3)
);

INSERT INTO product_vectors (product_name, embedding) VALUES
    ('Wireless Mouse', '[0.90, 0.10, 0.05]'),
    ('USB-C Hub', '[0.80, 0.20, 0.10]'),
    ('Mechanical Keyboard', '[0.85, 0.15, 0.05]'),
    ('Ceramic Vase', '[0.20, 0.80, 0.10]'),
    ('Notebook Set', '[0.30, 0.70, 0.20]');
