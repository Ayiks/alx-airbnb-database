INSERT INTO users (user_id, first_name, last_name, email, password_hash, role)
VALUES
  (gen_random_uuid(), 'Alice', 'Johnson', 'alice@example.com', 'hash123', 'host'),
  (gen_random_uuid(), 'Bob', 'Smith', 'bob@example.com', 'hash456', 'guest'),
  (gen_random_uuid(), 'Admin', 'User', 'admin@example.com', 'adminhash', 'admin');

INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
SELECT gen_random_uuid(), user_id, 'Ocean View Apartment', 'A cozy sea-view apartment', 'Accra', 120.00
FROM users WHERE email = 'alice@example.com';

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
SELECT gen_random_uuid(), p.property_id, u.user_id, '2025-11-01', '2025-11-05', 480.00, 'confirmed'
FROM properties p, users u
WHERE p.name = 'Ocean View Apartment' AND u.email = 'bob@example.com';

INSERT INTO payments (payment_id, booking_id, amount, payment_method)
SELECT gen_random_uuid(), b.booking_id, 480.00, 'credit_card'
FROM bookings b;

INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
SELECT gen_random_uuid(), p.property_id, u.user_id, 5, 'Amazing stay! Highly recommend.'
FROM properties p, users u
WHERE u.email = 'bob@example.com';

INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
SELECT gen_random_uuid(), u1.user_id, u2.user_id, 'Hi Alice, thanks for hosting me!'
FROM users u1, users u2
WHERE u1.email = 'bob@example.com' AND u2.email = 'alice@example.com';
