# Database Normalization

## Objective

Ensure the Airbnb database schema adheres to the Third Normal Form (3NF) to reduce redundancy and improve data integrity.



## First Normal Form (1NF)

**Rule:** Each table has a primary key and atomic (indivisible) values.

**Applied:**
- All tables use a primary key (`id` fields).
- No multi-valued or composite fields exist.
- Examples:
  - `User.phone_number` is atomic.
  - `Property.amenities` moved to a separate join table to avoid multi-values.

**Passes 1NF**

## Second Normal Form (2NF)

**Rule:** All non-key attributes must depend on the whole primary key (no partial dependency).

**Applied:**
- Tables like `Booking` and `Payment` have composite relations but all attributes depend on their respective full keys.
- Join tables like `Property_Amenity` use composite primary keys.

**Passes 2NF**



## Third Normal Form (3NF)

**Rule:** No transitive dependency (non-key attribute depends on another non-key attribute).

**Applied:**
- All attributes depend only on their table’s primary key.
- Example:
  - `User` table: email, phone number → depend only on `user_id`
  - `Property` table: `owner_id` is a FK, no redundant host details stored here
  - `Booking` has no embedded `User` or `Property` data — only foreign keys

**Passes 3NF**



## Summary of Adjustments Made

- Extracted amenities into a separate `Amenity` table and linked via `Property_Amenity` join table to maintain atomicity and avoid repetition.
- Ensured all foreign key relationships (e.g., `Booking.user_id`, `Property.owner_id`) are stored by reference rather than duplicating user/property info.
- Removed any repeating groups or nested data structures.



## Result

The final schema design is normalized to **Third Normal Form (3NF)** with minimized redundancy and improved data consistency.

