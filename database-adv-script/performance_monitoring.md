# Database Performance Monitoring & Refinement Report

## Objective

Monitor and refine the database performance of frequently used queries in the **Airbnb clone database**, especially those accessing `bookings`, `users`, and `payments`.

---

## Step 1: Monitored Query

Frequently used query to fetch active bookings for a specific user:

```sql
SELECT 
    b.id AS booking_id, 
    b.start_date, 
    b.end_date, 
    p.name AS property_name,
    pay.amount
FROM bookings b
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE b.user_id = 42 AND b.status = 'confirmed';
