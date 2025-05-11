-- USERS
INSERT INTO users (name, email, password, phone_number, user_type)
VALUES 
('Alice Johnson', 'alice@example.com', 'hashed_password_1', '1234567890', 'guest'),
('Bob Smith', 'bob@example.com', 'hashed_password_2', '0987654321', 'host');

-- PROPERTIES
INSERT INTO properties (title, description, location, price_per_night, property_type, owner_id)
VALUES 
('Cozy Cottage', 'A peaceful retreat in the woods', 'Nairobi', 50.00, 'cottage', 2),
('Urban Apartment', 'Modern apartment in the city center', 'Mombasa', 80.00, 'apartment', 2);

-- BOOKINGS
INSERT INTO bookings (user_id, property_id, start_date, end_date, status)
VALUES 
(1, 1, '2025-06-01', '2025-06-05', 'confirmed'),
(1, 2, '2025-07-10', '2025-07-15', 'pending');

-- PAYMENTS
INSERT INTO payments (booking_id, amount, payment_date, payment_method)
VALUES 
(1, 200.00, '2025-05-01 10:00:00', 'credit_card');

-- REVIEWS
INSERT INTO reviews (booking_id, user_id, rating, comment, review_date)
VALUES 
(1, 1, 5, 'Amazing place! Very clean and cozy.', '2025-06-06 12:00:00');

-- AMENITIES
INSERT INTO amenities (name, description)
VALUES 
('WiFi', 'Free high-speed wireless internet'),
('Parking', 'Private parking available');

-- PROPERTY_AMENITIES
INSERT INTO property_amenities (property_id, amenity_id)
VALUES 
(1, 1),
(1, 2),
(2, 1);
