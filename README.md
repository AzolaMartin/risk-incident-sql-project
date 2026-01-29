# Enterprise Risk & Incident Overview 

This SQL project demonstrates how to join structured tables and answer practical business questions about **risk** and **incidents**—similar to the data reasoning used in enterprise risk and analytics environments.

## What’s inside
- **3 tables**: `departments`, `incidents`, `risk_scores`
- **Sample data** (CSV) you can import into any SQL tool
- **Schema + inserts** (`schema.sql`)
- **Beginner queries** (`queries.sql`) covering `SELECT`, `WHERE`, `JOIN`, `GROUP BY`, and simple aggregates

## Business questions answered
1. What incidents occurred, and which department owns them?
2. Which departments have the most incidents?
3. Which departments have elevated risk scores?

## How to run
### Option A — Any SQL editor (recommended)
1. Create a new database (or use an existing one).
2. Run `schema.sql` to create tables and insert sample data.
3. Run the queries in `queries.sql`.

### Option B — Import CSVs
If you prefer, import the CSVs in `/data` into your database and create tables to match the column names.


This project shows a clear, readable approach to getting answers from structured data.

## Files
- `schema.sql` — create tables + insert sample rows
- `queries.sql` — beginner-friendly analysis queries
- `data/` — CSV datasets used by the project
- `LICENSE` — MIT

---
**Author:** Azola Martin  
