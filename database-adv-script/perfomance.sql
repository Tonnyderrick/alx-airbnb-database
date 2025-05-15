-- Query to retrieve bookings with user, property, and payment details (no filters or explain)
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
