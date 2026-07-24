# Architecture Overview

This project uses a polyglot persistence approach by combining MongoDB, Redis, and PostgreSQL with pgvector for different workload needs.

## Why MongoDB was chosen
MongoDB is well suited for storing product catalog documents because each product can contain nested fields such as tags and ratings. Its flexible document model makes it easy to evolve the schema as product data changes.

## Why Redis was chosen
Redis is used for fast in-memory operations. It is ideal for caching the product catalog count, building a price leaderboard, and supporting real-time pub/sub notifications for inventory updates.

## Why pgvector was chosen
pgvector extends PostgreSQL for vector similarity search. This makes it possible to find semantically related products by comparing embedding vectors rather than only exact keyword matches.

## How the technologies work together
- MongoDB stores the primary product catalog.
- Redis provides temporary caching and real-time messaging.
- PostgreSQL with pgvector supports semantic product search.

```text
Client -> MongoDB (product catalog)
   |-> Redis (cache + leaderboard + pub/sub)
   |-> PostgreSQL + pgvector (semantic search)
```
