# Advanced SQL Join Queries

This file contains SQL queries written for the **ALX Airbnb Clone - Database Advanced Script** project. The goal is to practice and demonstrate SQL JOINs.

## Files

- `joins_queries.sql`: Contains all the SQL queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- `README.md`: This documentation.

## Queries

### 1. INNER JOIN - Bookings with Users
This query fetches all bookings and the users who made them. Only bookings that are linked to a user are returned.

### 2. LEFT JOIN - Properties with Reviews
Fetches all properties and their reviews. Properties with no reviews are also included (with NULL in the review fields).

### 3. FULL OUTER JOIN - All Users and All Bookings
Simulates a FULL OUTER JOIN using `UNION` of `LEFT JOIN` and `RIGHT JOIN` since MySQL doesn't support FULL OUTER JOIN natively. This query returns all users and all bookings, even if there's no relation between them.

# Subqueries Practice

This section includes SQL queries to practice writing both **correlated** and **non-correlated** subqueries using a sample Airbnb-like database structure.

## Files

- `subqueries.sql`: Contains subquery examples.
- `README.md`: Explains the queries.

## Queries

### 1. Non-Correlated Subquery: Properties with Average Rating > 4.0
This query uses a subquery to find all `property_id`s from the `reviews` table where the average rating exceeds 4.0. The outer query then returns details of those properties from the `properties` table.

### 2. Correlated Subquery: Users with More Than 3 Bookings
This query uses a correlated subquery inside the `WHERE` clause. It checks for each user how many bookings they've made. If the count is greater than 3, that user is included in the result.
