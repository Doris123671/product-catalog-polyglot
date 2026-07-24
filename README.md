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

## Lab 3 Submission

This workspace contains the Lab 3 submission files on branch `lab3-submission` and tag `v1.0.0`.

- Branch: https://github.com/Doris123671/product-catalog-polyglot/tree/lab3-submission
- Tag: https://github.com/Doris123671/product-catalog-polyglot/releases/tag/v1.0.0

Quick run notes:

- Flutter project: `lab3_flutter`
	- Ensure the Flutter SDK is installed and `C:\src\flutter\bin` is on your PATH, or use the full SDK path when running `flutter`.
	- To run the app on desktop or web (available targets):
		```powershell
		cd "lab3_flutter"
		C:\src\flutter\bin\flutter.bat pub get
		C:\src\flutter\bin\flutter.bat run -d windows   # run on Windows desktop
		C:\src\flutter\bin\flutter.bat run -d chrome    # run on Chrome web
		```

- MySQL scripts: `mysql_lab`
	- If you have `mysql`/`mysqlsh` on PATH, run the setup script to create the database and seed products:
		```powershell
		cd mysql_lab
		"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p < setup.sql
		# or using MySQL Shell SQL mode
		"C:\Program Files\MySQL\MySQL Shell 8.0\bin\mysqlsh.exe" root@localhost --sql < setup.sql
		```

Notes and limitations:

- This repository contains configuration and generated files for the Flutter project (`lab3_flutter`) including `.dart_tool` and `pubspec.lock`. If you clone the repo elsewhere, run `flutter pub get` inside `lab3_flutter` to restore packages.
- MySQL root access requires a password on this machine; the scripts are provided but cannot be executed here without credentials.

