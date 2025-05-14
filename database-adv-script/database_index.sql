-- EXPLAIN ANALYZE before creating index on bookings.user_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

-- Create index on bookings.user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- EXPLAIN ANALYZE after creating index on bookings.user_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;


-- EXPLAIN ANALYZE before creating index on bookings.property_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 2;

-- Create index on bookings.property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- EXPLAIN ANALYZE after creating index on bookings.property_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 2;


-- EXPLAIN ANALYZE before creating index on reviews.property_id
EXPLAIN ANALYZE
SELECT property_id, AVG(rating)
FROM reviews
GROUP BY property_id;

-- Create index on reviews.property_id
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- EXPLAIN ANALYZE after creating index on reviews.property_id
EXPLAIN ANALYZE
SELECT property_id, AVG(rating)
FROM reviews
GROUP BY property_id;
