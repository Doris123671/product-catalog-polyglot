# Architecture Overview

This project uses a polyglot persistence approach by combining MongoDB, Redis, and PostgreSQL with pgvector for different workload needs. Each database is chosen for the workload it handles best rather than forcing one technology to do everything.

## Why MongoDB was chosen
MongoDB is well suited for the product catalog because each product can be stored as a single document containing nested fields such as tags and ratings. Its flexible document model makes it easy to evolve the schema as product information changes over time.

## Why Redis was chosen
Redis is used for fast in-memory operations. It is ideal for caching the catalog product count, maintaining a price leaderboard, and supporting pub/sub notifications for inventory events.

## Why pgvector was chosen
pgvector extends PostgreSQL so semantic product search can be performed by comparing embedding vectors instead of relying only on exact keyword matches. This is useful when users search with meaning rather than exact terms.

## How the technologies work together
- MongoDB stores the main product catalog and supports filtering and aggregation.
- Redis provides temporary caching, ranking, and real-time messaging.
- PostgreSQL with pgvector powers semantic search using vector similarity.

```text
Client
  ├─> MongoDB: product catalog, filtering, aggregation
  ├─> Redis: cache, leaderboard, pub/sub notifications
  └─> PostgreSQL + pgvector: semantic product search
```
