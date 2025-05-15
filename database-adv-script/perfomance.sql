-- Step 1: Initial Query - all bookings with user, property, and payment info
SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;

-- Step 2: EXPLAIN Analysis of Initial Query
EXPLAIN SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.first_name,
    u.last_name,
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;

-- Step 3: Optimized Query with WHERE and AND
SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    p.location,
    pay.amount,
    pay.status
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE
    pay.status = 'completed'
    AND b.start_date >= '2024-01-01'
    AND p.location = 'Nairobi';

-- Step 4: EXPLAIN Analysis of Optimized Query
EXPLAIN SELECT
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    p.location,
    pay.amount,
    pay.status
FROM
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE
    pay.status = 'completed'
    AND b.start_date >= '2024-01-01'
    AND p.location = 'Nairobi';
