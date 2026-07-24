# Vector Search Results

## Semantic search query

```sql
SELECT product_name,
       embedding <=> '[0.85,0.15,0.05]' AS distance
FROM product_vectors
ORDER BY embedding <=> '[0.85,0.15,0.05]'
LIMIT 2;
```

## Returned products

```text
Mechanical Keyboard
USB-C Hub
```

## Distance values

```text
Mechanical Keyboard -> 0.0
USB-C Hub -> 0.1
```

## Why these products were returned
These products are the closest matches to the query vector because their embeddings are the most similar in numeric space. Lower cosine distance means higher similarity.
