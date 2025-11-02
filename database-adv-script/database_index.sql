-- Indexes to speed up queries

-- Frequently joined columns
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Search & filtering on properties
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_price ON properties(price);

-- Users by email login
CREATE UNIQUE INDEX idx_users_email ON users(email);