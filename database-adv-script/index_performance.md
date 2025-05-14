# Index Optimization Report

## Objective
Improve performance of frequent queries on the User, Booking, and Property tables by creating indexes on high-usage columns.

## High-Usage Columns Identified

| Table     | Column        | Reason for Indexing                      |
|-----------|---------------|------------------------------------------|
| bookings  | user_id       | Used in JOIN and WHERE clauses           |
| bookings  | property_id   | Used in JOIN and filtering               |
| bookings  | start_date    | Used in ORDER BY or date-based filters   |
| reviews   | property_id   | Used in JOIN and GROUP BY (aggregates)   |
| users     | name          | Used in ORDER BY or searches             |
| properties| name          | Used in ORDER BY or searches             |

## Indexes Created

See `database_index.sql` for full list of `CREATE INDEX` statements.

## Performance Comparison

**Query Example Before Indexing:**
```sql
EXPLAIN SELECT * FROM bookings WHERE user_id = 3;
