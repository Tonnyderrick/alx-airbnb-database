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
