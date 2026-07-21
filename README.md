# Product Catalog Polyglot Persistence Project

## Overview
This repository demonstrates a polyglot persistence architecture for a small product catalog using MongoDB, Redis, and PostgreSQL with pgvector. MongoDB stores the product catalog, Redis handles caching and live rankings, and PostgreSQL with pgvector supports semantic similarity search.

## Repository structure
- mongodb/ - Seed data and MongoDB query/aggregation scripts
- redis/ - Cache, leaderboard, and pub/sub command examples
- pgvector/ - SQL setup and semantic search queries
- docs/ - Architecture and results documentation

## Setup instructions
1. Install MongoDB, Redis, and PostgreSQL with pgvector.
2. Start each service locally.
3. Create or switch to the shop database in MongoDB.
4. Run the MongoDB scripts with the Mongo shell.
5. Run the Redis commands in the Redis CLI.
6. Run the SQL scripts in PostgreSQL.

## Commands used

### MongoDB
```bash
mongosh --file mongodb/products_seed.js
mongosh --file mongodb/product_filters.js
mongosh --file mongodb/aggregation_pipeline.js
```

### Redis
```bash
redis-cli < redis/cache_commands.txt
redis-cli < redis/leaderboard_commands.txt
redis-cli < redis/pubsub_commands.txt
```

### PostgreSQL + pgvector
```bash
psql -f pgvector/pgvector_setup.sql
psql -f pgvector/semantic_search.sql
```

## Notes
- The MongoDB seed script inserts products into the shop database.
- The Redis cache command stores a product-count value with a 5-minute expiration.
- The pgvector SQL script enables vector support and stores sample embeddings for semantic search.
