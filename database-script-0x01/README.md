# Database Schema for alx-airbnb-database

## Objective

Define the structure of the Airbnb-style relational database using SQL Data Definition Language (DDL).


## Files

- `schema.sql`: Contains all the `CREATE TABLE` statements, foreign key constraints, and indexes for performance.
- `README.md`: Describes the purpose and content of this directory.


## Tables

- **users**
- **properties**
- **bookings**
- **payments**
- **reviews**
- **amenities**
- **property_amenities** (many-to-many join table)

---

## Notes

- All relationships are normalized to 3NF.
- Proper constraints and foreign keys are applied.
- Indexes are created on foreign key columns and frequently queried fields for performance.
