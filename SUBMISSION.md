# Lab 3 Submission Notes

This document summarizes the Lab 3 deliverables and provides quick instructions for a grader or reviewer to run and verify the work.

Repository branch and tag:
- Branch: `lab3-submission`
- Tag: `v1.0.0`

Main deliverables:
- `lab3_flutter/` — Flutter project updated to show a personalized greeting and include widget test.
- `mysql_lab/` — MySQL DDL/DML scripts to create `lab3_db`, `products` table, and seed data (`setup.sql`), plus example queries (`queries.sql`).
- `worksheet_notes.txt` — Lab worksheet notes including environment findings and explanations.
- `README.md` — Top-level instructions and run commands.

How to quickly verify:
1. Flutter app:
   - Install Flutter SDK and run `flutter pub get` inside `lab3_flutter`.
   - Run the app on a supported target (Windows, Chrome) using `flutter run`.
   - Verify the main screen shows the text "Hello from Doris" and tapping the `FloatingActionButton` increments the counter.

2. MySQL:
   - Run `mysql_lab/setup.sql` with a user that has permission to create databases. Example command (adjust path):
```powershell
"C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" -u root -p < mysql_lab\setup.sql
```
   - Run the queries in `mysql_lab/queries.sql` to verify the table contents and filters.

Notes and known limitations:
- The grader must provide the MySQL root password or use a database user with appropriate privileges to run the setup script.
- Flutter SDK is present on the original machine at `C:\src\flutter`; if running elsewhere, ensure Flutter is installed and on PATH.

If you want, I can also:
- Open the GitHub Pull Request for `lab3-submission` automatically (requires GitHub auth).
- Create a GitHub Release with the tag metadata and attach compiled artifacts.
