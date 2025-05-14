-- Index for user_id in bookings table (frequently used in JOINs and WHERE clauses)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index for property_id in bookings table (used in JOINs and filters)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index for property_id in reviews table (used in aggregations and joins)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Index for start_date in bookings table (used in ORDER BY or range filtering)
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Index for name in users table (if used in search or ordering)
CREATE INDEX idx_users_name ON users(name);

-- Index for name in properties table (if used in search or ordering)
CREATE INDEX idx_properties_name ON properties(name);
