# Partitioning Performance Report

## Objective

Improve performance of date-based queries on the large `bookings` table by partitioning it based on the `start_date` column.

---

## Partitioning Strategy

We used `RANGE` partitioning on the `YEAR(start_date)` field:

```sql
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
