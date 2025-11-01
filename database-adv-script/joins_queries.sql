-- 1. INNER JOIN: bookings + users
SELECT 
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- 2. LEFT JOIN
SELECT 
    p.id AS property_id,
    p.title AS property_title,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- 3. FULL OUTER JOIN: users + bookings (all users, all bookings)
SELECT 
    u.id AS user_id,
    u.name,
    b.id AS booking_id,
    b.start_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;