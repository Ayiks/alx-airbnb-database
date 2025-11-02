-- 1. Properties where average rating > 4.0
SELECT id, title
FROM properties
WHERE (
    SELECT AVG(rating)
    FROM reviews
    WHERE reviews.property_id = properties.id
) > 4.0;

-- 2. Correlated Subquery: users with more than 3 bookings
SELECT id, name, email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
