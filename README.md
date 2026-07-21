# Product Catalog Polyglot Persistence Project

## Overview
This repository contains example scripts and documentation for building a product catalog using MongoDB, Redis, and PostgreSQL with pgvector.

## Repository structure
- mongodb/ - MongoDB seed and query scripts
- redis/ - Redis cache, leaderboard, and pub/sub commands
- pgvector/ - SQL setup and semantic search queries
- docs/ - Architecture and results documentation

## Setup instructions
1. Install MongoDB, Redis, and PostgreSQL with pgvector.
2. Start the services locally.
3. Run the MongoDB scripts using the Mongo shell.
4. Run the Redis commands in the Redis CLI.
5. Run the SQL scripts in PostgreSQL.

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
