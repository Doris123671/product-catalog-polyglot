# mysql_lab

This folder contains SQL scripts used for Lab 3 MySQL exercises.

Files:
- `setup.sql` - Creates the `lab3_db` database, defines the `products` table, and inserts sample product rows.
- `queries.sql` - Example SELECT queries used in the lab worksheet:
  - `SELECT * FROM products;`
  - `SELECT * FROM products WHERE category = 'Electronics';`
  - `SELECT * FROM products ORDER BY price ASC;`

How to run:
1. Start your MySQL server.
2. From a terminal with access to `mysql` or `mysqlsh`, run one of the commands below (adjust paths as needed):

Using classic `mysql` client:
```powershell
"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p < setup.sql
```

Using MySQL Shell in SQL mode:
```powershell
"C:\Program Files\MySQL\MySQL Shell 8.0\bin\mysqlsh.exe" root@localhost --sql < setup.sql
```

Then run queries interactively:
```sql
USE lab3_db;
SELECT * FROM products;
SELECT * FROM products WHERE category = 'Electronics';
SELECT * FROM products ORDER BY price ASC;
```

Notes:
- The setup script will create the database and table if they do not already exist.
- The script assumes you have privileges to create databases and tables. If your environment uses a different user, update the commands accordingly.
