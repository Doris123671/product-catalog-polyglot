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
The query vector is closest to the embedding for Mechanical Keyboard, so it is returned first with the smallest cosine distance. USB-C Hub is the next closest match because its vector is still semantically near the query vector. Lower cosine distance means higher similarity.
