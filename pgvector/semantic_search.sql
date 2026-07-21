SELECT product_name,
       embedding <=> '[0.85,0.15,0.05]' AS distance
FROM product_vectors
ORDER BY embedding <=> '[0.85,0.15,0.05]'
LIMIT 2;
